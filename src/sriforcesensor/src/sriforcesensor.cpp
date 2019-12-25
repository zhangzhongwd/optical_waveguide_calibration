#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64MultiArray.h"
#include <sstream>
#include <iostream>
#include "geometry_msgs/Twist.h"
#include "sriforcesensor/ForceTorquePosition.h"
#include <signal.h>
#include "TCPClient.h"
#include <Eigen/Dense>
using namespace Eigen;
using namespace std;
TCPClient tcp;
#define M812X_CHN_NUMBER	6
MatrixXd m_dResultChValue=MatrixXd::Zero(1,M812X_CHN_NUMBER);   //engineering output of each channel
MatrixXd m_dDecouplingValue_Init=MatrixXd::Zero(1,M812X_CHN_NUMBER); //Initial output
MatrixXd m_dDecouplingValue=MatrixXd::Zero(1,M812X_CHN_NUMBER); //final output
MatrixXd m_nADCounts=MatrixXd::Zero(1,M812X_CHN_NUMBER);        //ad output
MatrixXd m_dAmpZero=MatrixXd::Zero(1,M812X_CHN_NUMBER);         //read
MatrixXd m_dChnGain=MatrixXd::Zero(1,M812X_CHN_NUMBER);         //read
MatrixXd m_dChnEx=MatrixXd::Zero(1,M812X_CHN_NUMBER);           //read
MatrixXd m_dDecouplingCoefficient(6, 6);

void sig_exit(int s)
{
  tcp.exit();
  exit(0);
}

template <class MatT>
Eigen::Matrix<typename MatT::Scalar, MatT::ColsAtCompileTime, MatT::RowsAtCompileTime>
pseudoinverse(const MatT &mat, typename MatT::Scalar tolerance = typename MatT::Scalar{1e-4}) // choose appropriately
{
    typedef typename MatT::Scalar Scalar;
    auto svd = mat.jacobiSvd(Eigen::ComputeFullU | Eigen::ComputeFullV);
    const auto &singularValues = svd.singularValues();
    Eigen::Matrix<Scalar, MatT::ColsAtCompileTime, MatT::RowsAtCompileTime> singularValuesInv(mat.cols(), mat.rows());
    singularValuesInv.setZero();
    for (unsigned int i = 0; i < singularValues.size(); ++i) {
        if (singularValues(i) > tolerance)
        {
            singularValuesInv(i, i) = Scalar{1} / singularValues(i);
        }
        else
        {
            singularValuesInv(i, i) = Scalar{0};
        }
    }
    return svd.matrixV() * singularValuesInv * svd.matrixU().adjoint();
}

bool ConfigSystem(void)
{

  //string rec = tcp.receive();
  tcp.Send("AT+SGDM=(A01,A02,A03,A04,A05,A06);C;1;(WMA:1)\r\n");
  string rec = tcp.read();
  if( rec != "" )
  {
    std::cout << "Server Response:" << rec << endl;
  } else
  {
    std::cout << "Server Not Response:"  << endl;
  }
  tcp.Send("AT+SMPR=100\r\n");
  rec = tcp.read();
  if(rec != "" )
  {
    std::cout << "AT+SMPR=: " << rec << endl;
  }else{
    std::cout << "Server no Response:" << endl;
  }
  tcp.Send("AT+AMPZ=?\r\n");
  if(tcp.GetChParameter(m_dAmpZero))
  {
    std::cout << "AT+AMPZ=: " << m_dAmpZero << endl;
  }else{
    std::cout << "Server no Response:" << endl;
  }

  tcp.Send("AT+CHNAPG=?\r\n");
  if(tcp.GetChParameter(m_dChnGain))
  {
    std::cout << "AT+CHNAPG=: " << m_dChnGain << endl;
  }else{
    std::cout << "Server no Response:" << endl;
  }
  tcp.Send("AT+EXMV=?\r\n");
  if(tcp.GetChParameter(m_dChnEx))
  {
    std::cout << "AT+EXMV=: " << m_dChnEx << endl;
  }else{
    std::cout << "Server no Response:" << endl;
  }
  tcp.Send("AT+GOD\r\n");
  if(tcp.GetADCounts(m_nADCounts))
  {
    std::cout << "AD value:" << m_nADCounts << endl;
  }else{
    std::cout << "Server no Response:" << endl;
  }

  for (unsigned  int i = 0; i < 6; ++i) {
    m_dResultChValue(i) = 1000*( (m_nADCounts(i) - m_dAmpZero(i)) / (double)65535*(double)5 ) / m_dChnGain(i) / m_dChnEx(i);
  }
  std::cout << "result value is : "  <<m_dResultChValue << std::endl;

  m_dDecouplingCoefficient<<0.131707,0.141676,0.544112,16.398416,0.404862,-15.611046,
				0.143384,-18.761457,0.280423,9.597208,-0.147424,8.961043,
				52.764933,0.378833,50.387345,0.065305,49.931477,-1.424085,
				0.015169,-0.016919,-0.245717,0.003335,0.272488,-0.003211,
				0.294375,0.00031,-0.168305,0.000559,-0.167849,0.004856,
				-0.000803,0.117387,0.002731,0.096299,-0.00153,0.073686;
  std::cout << "Decoupling matrix is set as: " <<endl <<m_dDecouplingCoefficient << std::endl;
  m_dDecouplingValue_Init=m_dResultChValue*m_dDecouplingCoefficient.transpose();
  std::cout << "force is: " <<endl <<m_dDecouplingValue_Init << std::endl;
  return true;
}


/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int main(int argc, char **argv)
{
  /**
   * The ros::init() function needs to see argc and argv so that it can perform
   * any ROS arguments and name remapping that were provided at the command line.
   * For programmatic remappings you can use a different version of init() which takes
   * remappings directly, but for most command-line programs, passing argc and argv is
   * the easiest way to do it.  The third argument to init() is the name of the node.
   *
   * You must call one of the versions of ros::init() before using any other
   * part of the ROS system.
   */
  ros::init(argc, argv, "forcesensor");

  /**
   * NodeHandle is the main access point to communications with the ROS system.
   * The first NodeHandle constructed will fully initialize this node, and the last
   * NodeHandle destructed will close down the node.
   */
  ros::NodeHandle n;

  signal(SIGINT, sig_exit);
  if(tcp.setup("192.168.0.108",4008)==true)
  {
    cout<<"Force sensor has been connected!"<<endl;
  }else{
    cout<<"Force sensor connection failed!!!!!!!!!!!!!!!!!"<<endl;
  }
  //initialize the setting of the force sensor
  ConfigSystem();
  //get real time force sensor data
  tcp.Send("AT+GSD\r\n");

  /**
   * The advertise() function is how you tell ROS that you want to
   * publish on a given topic name. This invokes a call to the ROS
   * master node, which keeps a registry of who is publishing and who
   * is subscribing. After this advertise() call is made, the master
   * node will notify anyone who is trying to subscribe to this topic name,
   * and they will in turn negotiate a peer-to-peer connection with this
   * node.  advertise() returns a Publisher object which allows you to
   * publish messages on that topic through a call to publish().  Once
   * all copies of the returned Publisher object are destroyed, the topic
   * will be automatically unadvertised.
   *
   * The second parameter to advertise() is the size of the message queue
   * used for publishing messages.  If messages are published more quickly
   * than we can send them, the number here specifies how many messages to
   * buffer up before throwing some away.
   */


  //geometry_msgs::Twist Forcevalue;
  //ros::Publisher chatter_pub = n.advertise<geometry_msgs::Twist>("Force", 1000);
  ros::Publisher chatter_pub = n.advertise<sriforcesensor::ForceTorquePosition>("Force", 1000);

  ros::Rate loop_rate(1000);

  /**
   * A count of how many messages we have sent. This is used to create
   * a unique string for each message.
   */
  int count = 0;
  while (ros::ok())
  {
    /**
     * This is a message object. You stuff it with data, and then publish it.
     */
    tcp.readrecieveBuffer(m_nADCounts);
    for (unsigned  int i = 0; i < 6; ++i) {
      m_dResultChValue(i) = 1000*( (m_nADCounts(i) - m_dAmpZero(i)) / (double)65535*(double)5 ) / m_dChnGain(i) / m_dChnEx(i);
    }
    m_dDecouplingValue=m_dResultChValue*m_dDecouplingCoefficient.transpose();
    m_dDecouplingValue=m_dDecouplingValue - m_dDecouplingValue_Init;
    std::cout << "force is: " <<endl <<m_dDecouplingValue << std::endl;

    sriforcesensor::ForceTorquePosition ForceTorquePosition_msg;
    ForceTorquePosition_msg.Forcevalue.linear.x=m_dDecouplingValue(0,0);
    ForceTorquePosition_msg.Forcevalue.linear.y=m_dDecouplingValue(0,1);
    ForceTorquePosition_msg.Forcevalue.linear.z=m_dDecouplingValue(0,2);
    ForceTorquePosition_msg.Forcevalue.angular.x=m_dDecouplingValue(0,3);
    ForceTorquePosition_msg.Forcevalue.angular.y=m_dDecouplingValue(0,4);
    ForceTorquePosition_msg.Forcevalue.angular.z=m_dDecouplingValue(0,5);

    MatrixXf h(3, 1);
    h << 0, 0, 0.01;
    VectorXf Force(3);
    Force << ForceTorquePosition_msg.Forcevalue.linear.x, ForceTorquePosition_msg.Forcevalue.linear.y, ForceTorquePosition_msg.Forcevalue.linear.z;
    VectorXf Torque(3);
    Torque<< ForceTorquePosition_msg.Forcevalue.angular.x, ForceTorquePosition_msg.Forcevalue.angular.y, ForceTorquePosition_msg.Forcevalue.angular.z;
    float radius = 19.5e-3;
    MatrixXf hat_f(3, 3);
    hat_f << 0, -Force(2), Force(1),
            Force(2), 0, -Force(0),
            -Force(1), Force(0), 0;
    VectorXf r0(3), r1(3), r2(3);
    r0 = -pseudoinverse(hat_f) * (hat_f * h + Torque);
    float a, b, c, lambda1, lambda2, val_1, val_2;
    a = Force.transpose() * Force;
    b = Force.transpose() * (r0 * 2.0);
    c = r0.transpose() * r0 - radius * radius;
    lambda1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
    lambda2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);
    r1 = Force * lambda1 + r0;
    val_1 = r1.transpose() * Force;
    r2 = Force * lambda2 + r0;
    val_2 = r2.transpose()* Force;
    ForceTorquePosition_msg.Radius.data.resize(3);
    
    if(val_1 < 0){
    ForceTorquePosition_msg.Radius.data[0] = r1(0);
    ForceTorquePosition_msg.Radius.data[1] = r1(1);
    ForceTorquePosition_msg.Radius.data[2] = r1(2);
    }
    else{
    ForceTorquePosition_msg.Radius.data[0] = r2(0);
    ForceTorquePosition_msg.Radius.data[1] = r2(1);
    ForceTorquePosition_msg.Radius.data[2] = r2(2);
    }
    std::cout << "Position is: " <<endl << ForceTorquePosition_msg.Radius.data[0] << " " << ForceTorquePosition_msg.Radius.data[1] << " " << ForceTorquePosition_msg.Radius.data[2] << std::endl;
    

    /**
     * The publish() function is how you send messages. The parameter
     * is the message object. The type of this object must agree with the type
     * given as a template parameter to the advertise<>() call, as was done
     * in the constructor above.
     */
    chatter_pub.publish(ForceTorquePosition_msg);

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}


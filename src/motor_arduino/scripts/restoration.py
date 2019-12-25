import sys 
sys.path.append('/home/zhong/Sensor/src/motor_arduino/src') 
from motor_drive import Motor_drive
sys.path.append('/home/zhong/Sensor/src/sriforcesensor/src') 
from sensor_listener import M8127_sensor_listener
import rospy
import time
from motor_arduino.msg import Stepper, Limit
from sriforcesensor.msg import ForceTorquePosition

if __name__=='__main__':
	Set_Motor_Parameters=Motor_drive()

	rospy.sleep(0.2)

	# for i in range(3):
	# 	print ("i is %d"%i)
	# 	msg=Set_Motor_Parameters.create_limit_control_msg(i+1,True)
	# 	Set_Motor_Parameters.publish_limit_control(msg)
	# 	rospy.sleep(1)
	# 	msg=Set_Motor_Parameters.create_motor_drive_msg(i+1,False,500*7)
	# 	Set_Motor_Parameters.publish_motor_drive(msg)
	# 	rospy.sleep(4)
	# 	msg=Set_Motor_Parameters.create_limit_control_msg(i+1,False)
	# 	Set_Motor_Parameters.publish_limit_control(msg)
	# 	rospy.sleep(1)		
	# 	print ('%d finished'%(i+1))


	Sriforcesensor_msg=M8127_sensor_listener()
	rospy.sleep(0.2)
	msg=Sriforcesensor_msg.force
	print ('msg is')
	print (msg)

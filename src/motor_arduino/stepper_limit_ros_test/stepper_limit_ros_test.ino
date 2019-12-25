#include <ros.h>
#include <motor_arduino/Stepper.h>
#include <motor_arduino/Limit.h>
#include <std_msgs/Int16.h>

int dirPin[] = {11,12,13};
int stepperPin[] = {8,9,10};



ros::NodeHandle  nh;

void step(int stepper_number,boolean dir,int steps){
  pinMode(stepperPin[stepper_number-1], OUTPUT);
  digitalWrite(dirPin[stepper_number-1],dir);
  delay(50);
  for(int i=0;i<steps;i++){
    digitalWrite(stepperPin[stepper_number-1], HIGH);
    delayMicroseconds(500);
    digitalWrite(stepperPin[stepper_number-1], LOW);
    delayMicroseconds(500);
  }
}


void Stop_stepper_1(){
    pinMode(stepperPin[0], INPUT);
}

void Stop_stepper_2(){
    pinMode(stepperPin[1], INPUT);  
}

void Stop_stepper_3(){
    pinMode(stepperPin[2], INPUT);  
}


void Limit_control(const motor_arduino::Limit& msg){
  switch(msg.limit_number){
    case 1:
    if (msg.limit_start==true)
    attachInterrupt(0,Stop_stepper_1,RISING);
    else
    detachInterrupt(0);
    break;
    case 2:
    if (msg.limit_start==true)
    attachInterrupt(1,Stop_stepper_2,RISING);
    else
    detachInterrupt(1);
    break;
    case 3:
    if (msg.limit_start==true)
    attachInterrupt(2,Stop_stepper_3,RISING);
    else
    detachInterrupt(2);
    break;
  }
}

void Motor_drive(const motor_arduino::Stepper& msg){
  switch(msg.stepper_number){
    case 1:
    step(msg.stepper_number,msg.stepper_direction,msg.stepper_count);
    delay(50);
    break;
    case 2:
    step(msg.stepper_number,msg.stepper_direction,msg.stepper_count);
    delay(50);
    break;
    case 3:
    step(msg.stepper_number,msg.stepper_direction,msg.stepper_count);
    delay(50);
    break;
  }
}


ros::Subscriber<motor_arduino::Stepper> motor_drive_sub("/motor_pub",Motor_drive);
ros::Subscriber<motor_arduino::Limit> limit_control_sub("/limit_control",Limit_control);
//std_msgs::Int16 flag;
//ros::Publisher flag_pub("/motor_flag",&flag);




void setup()
{
  pinMode(dirPin[0], OUTPUT);
  pinMode(dirPin[1], OUTPUT);
  pinMode(dirPin[2], OUTPUT);
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  Serial.begin(57600);
  nh.initNode(); 
  nh.subscribe(motor_drive_sub);
  nh.subscribe(limit_control_sub);
//  nh.advertise(flag_pub);
}


void loop()
{
  nh.spinOnce();
}

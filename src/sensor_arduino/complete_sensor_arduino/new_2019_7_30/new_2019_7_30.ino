#include <ros.h>
#include <sensor_arduino/WriteVoltage.h>
#include <string.h>


ros::NodeHandle  nh;
int LED_size=2;
int number=100;
int a[100]={};
int b[100]={};
int count,sum;
int average;



sensor_arduino::WriteVoltage sensor_voltage;
ros::Publisher voltage_pub("/sensor_read_voltage",&sensor_voltage);



void setup()
{
  nh.initNode(); 
  nh.advertise(voltage_pub);

}


void loop() 
{
  int16_t voltage[LED_size]={0};
  sensor_voltage.voltage_length=LED_size;
  int16_t average[2];

  
  for(int k=0;k<number;k++){
    a[k]=analogRead(0);
  }
  memset(b,0,sizeof(b));
  count=0;
  for(int i=0;i<number-1;i++){
    if(abs(a[i]-a[i+1])<2){
      b[i]=a[i];
      count=count+1;
    }
  }
  sum=0;
  for(int i=0;i<number;i++){
    sum=sum+b[i];
  }
  average[0]=sum/count;


  for(int k=0;k<number;k++){
    a[k]=analogRead(1);
  }
  memset(b,0,sizeof(b));
  count=0;
  for(int i=0;i<number-1;i++){
    if(abs(a[i]-a[i+1])<2){
      b[i]=a[i];
      count=count+1;
    }
  }
  sum=0;
  for(int i=0;i<number;i++){
    sum=sum+b[i];
  } 
  average[1]=sum/count;

  sensor_voltage.voltage=average;
  voltage_pub.publish(&sensor_voltage);
  nh.spinOnce();
  
//  int16_t adc[2];
//  adc[0]=ads.readADC_SingleEnded(0);
//  adc[1]=ads.readADC_SingleEnded(1);
//  sensor_voltage.voltage=adc;
//  voltage_pub.publish(&sensor_voltage);
//  nh.spinOnce();

}

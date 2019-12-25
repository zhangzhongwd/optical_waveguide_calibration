#include <ros.h>
#include <sensor_arduino/WriteVoltage.h>
#include <Adafruit_ADS1015.h>
#include <Wire.h>

ros::NodeHandle  nh;
int LED_size=2;
Adafruit_ADS1115 ads(0x48);

void writeVoltage(const sensor_arduino::WriteVoltage& msg){
//  int voltage[3]=msg.voltage;
//  int size=sizeof(voltage);
//  
//  for (int i=0;i<size;i++){
//    analogWrite(i+2,voltage[i]);
//  }
    analogWrite(8,msg.voltage[0]);
    analogWrite(9,msg.voltage[1]);
}


ros::Subscriber<sensor_arduino::WriteVoltage> write_voltage_sub("/sensor_write_voltage",writeVoltage);
sensor_arduino::WriteVoltage sensor_voltage;
ros::Publisher voltage_pub("/sensor_read_voltage",&sensor_voltage);



void setup()
{
  nh.initNode(); 
  nh.advertise(voltage_pub);
  nh.subscribe(write_voltage_sub);
  ads.begin();

}


void loop() 
{
  int16_t voltage[LED_size]={0};
  sensor_voltage.voltage_length=LED_size;
  int16_t adc[2];
  adc[0]=ads.readADC_SingleEnded(0);
  adc[1]=ads.readADC_SingleEnded(1);
  sensor_voltage.voltage=adc;
  voltage_pub.publish(&sensor_voltage);
  nh.spinOnce();
}

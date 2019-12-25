#!/usr/bin/env python
import rospy
import time
from motor_arduino.msg import Stepper
from motor_arduino.msg import Limit
from sriforcesensor.msg import ForceTorquePosition
from sensor_arduino.msg import WriteVoltage
import numpy as np


class waveguide_drive():
	def __init__(self):
		rospy.init_node('waveguide',anonymous=True)
		self.force=np.array([0,0,0])
		self.sensor=np.array([0,0])
		self.motor_drive_pub = rospy.Publisher("/motor_pub",Stepper,queue_size=10)
		self.limit_control_pub = rospy.Publisher("/limit_control",Limit,queue_size=10)
		self.sensor_force_sub = rospy.Subscriber("/Force",ForceTorquePosition,self.JSCallback_force)
		self.sensor_voltage_pub = rospy.Publisher("/sensor_write_voltage",WriteVoltage,queue_size=10)
		self.sensor_voltage_sub = rospy.Subscriber("/sensor_read_voltage",WriteVoltage,self.JSCallback_sensor)
		# self.motor_flag_sub = rospy.Subscriber("/motor_flag",Int16,self.JSCallback)

	def publish_motor_drive(self,msg):
		try:
			self.motor_drive_pub.publish(msg)
		except rospy.ROSInterruptException:
			print("publish motor_drive error")
		finally:
			pass

	def create_motor_drive_msg(self,number,direction,count):
		msg=Stepper()
		msg.stepper_number = number
		msg.stepper_direction = direction
		msg.stepper_count = count
		print ("create motor_drive number is %d"%number)
		print ("create motor_drive direction is %s"%direction)
		print ("create motor_drive count is %d"%count)
		return msg

	def publish_limit_control(self,msg):
		try:
			self.limit_control_pub.publish(msg)
		except rospy.ROSInterruptException:
			print("publish limit_control error")
		finally:
			pass

	def create_limit_control_msg(self,number,start):
		msg=Limit()
		msg.limit_number = number
		msg.limit_start = start
		print ("create limit_control number is %d"%number)
		print ("create limit_control start is %s"%start)
		return msg

	def publish_voltage(self,msg):
		try:
			self.sensor_voltage_pub.publish(msg)
		except rospy.ROSInterruptException:
			print("publish voltage error")
		finally:
			pass

	def create_voltage_msg(self,voltage_256):
		msg=WriteVoltage()
		msg.voltage = voltage_256
		return msg

	def JSCallback_force(self,msg):
		force_torque = np.array([msg.Forcevalue.linear.x, msg.Forcevalue.linear.y, msg.Forcevalue.linear.z, msg.Forcevalue.angular.x, msg.Forcevalue.angular.y, msg.Forcevalue.angular.z])
		force = force_torque[0:3]
		torque = force_torque[3:6]
		self.force=force

	def JSCallback_sensor(self,msg):
		sensor_len=len(msg.voltage)
		sensor_value=np.array([0]*sensor_len)
		for i in range(sensor_len):
			sensor_value[i]=msg.voltage[i]
		self.sensor=sensor_value
		# print (self.sensor)
		# print ("subsribe voltage value is %d"%data.voltage)

if __name__=='__main__':
	Waveguide=waveguide_drive()

	rospy.sleep(0.2)
	# msg=Waveguide.create_voltage_msg([180,180])
	# Waveguide.publish_voltage(msg)

	for i in range(3):
		print ("i is %d"%i)
		msg=Waveguide.create_limit_control_msg(i+1,True)
		Waveguide.publish_limit_control(msg)
		rospy.sleep(0.5)
		msg=Waveguide.create_motor_drive_msg(i+1,False,500*5)
		Waveguide.publish_motor_drive(msg)
		rospy.sleep(3)
		msg=Waveguide.create_limit_control_msg(i+1,False)
		Waveguide.publish_limit_control(msg)
		rospy.sleep(0.5)		
		print ('%d finished'%(i+1))


	fx,fy,fz=0,0,0
	msg=Waveguide.create_motor_drive_msg(1,True,4000)
	fx=fx+4000
	Waveguide.publish_motor_drive(msg)
	rospy.sleep(4.5)
	msg=Waveguide.create_motor_drive_msg(2,False,1600)
	fy=fy-1600
	Waveguide.publish_motor_drive(msg)
	rospy.sleep(2)
	msg=Waveguide.create_motor_drive_msg(3,True,9100)
	fz=fz+9100
	Waveguide.publish_motor_drive(msg)
	rospy.sleep(10)

	msg=Waveguide.create_motor_drive_msg(1,False,5000)
	fx=fx-5000
	Waveguide.publish_motor_drive(msg)
	rospy.sleep(6)


	print ('have arrived')

	for i in range(11):

		fout=open('/home/zhong/Sensor/src/final_script/single_test/9_12_data_3/'+(i*1000).__str__()+'.txt','a+')
		for j in range(150):
			msg=Waveguide.create_motor_drive_msg(3,True,10)
			fz=fz+10
			Waveguide.publish_motor_drive(msg)
			rospy.sleep(0.3)  
			fout.write(str(np.array([fx,fy,fz])))
			fout.write(str(Waveguide.force))
			fout.write(str(Waveguide.sensor))
			fout.write('\n')
		fout.close()

		msg=Waveguide.create_motor_drive_msg(3,False,1500)
		fz=fz-1500
		Waveguide.publish_motor_drive(msg)
		rospy.sleep(2)	

		msg=Waveguide.create_motor_drive_msg(1,True,1000)
		fx=fx+1000
		Waveguide.publish_motor_drive(msg)
		rospy.sleep(1.5)			

	msg=Waveguide.create_motor_drive_msg(3,False,8000)
	Waveguide.publish_motor_drive(msg)
	rospy.sleep(9)
	msg=Waveguide.create_motor_drive_msg(2,True,2000)
	Waveguide.publish_motor_drive(msg)
	rospy.sleep(2.5)
	msg=Waveguide.create_motor_drive_msg(1,False,8000)
	Waveguide.publish_motor_drive(msg)
	rospy.sleep(10)

	# rospy.spin()

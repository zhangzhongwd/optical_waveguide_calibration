#!/usr/bin/env python
# license removed for brevity

import rospy
import time
from sensor_arduino.msg import WriteVoltage

class Sensor_Write_Voltage():
	def __init__(self):
		rospy.init_node('sensor_write_voltage',anonymous=True)
		self.sensor_voltage_pub = rospy.Publisher("/sensor_write_voltage",WriteVoltage,queue_size=10)
		self.sensor_voltage_sub = rospy.Subscriber("/sensor_read_voltage",WriteVoltage,self.JSCallback)

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
		print ("create voltage value is %d"%voltage_256)
		return msg

	def JSCallback(self,data):
		pass
		# print ("subsribe voltage value is %d"%data.voltage)


if __name__=='__main__':
	Sensor_Write_Voltage()
	rospy.spin()


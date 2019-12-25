#!/usr/bin/env python
import rospy
import time
from motor_arduino.msg import Limit

class Limit_control():
	def __init__(self):
		rospy.init_node('limit_control',anonymous=True)
		self.limit_control_pub = rospy.Publisher("/limit_control",Limit,queue_size=10)
		# self.motor_drive_sub = rospy.Subscriber("/sensor_read_voltage",WriteVoltage,self.JSCallback)

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

	def JSCallback(self,data):
		pass
		# print ("subsribe voltage value is %d"%data.voltage)


if __name__=='__main__':
	Limit_control()
	rospy.spin()


#!/usr/bin/env python
import rospy
import time
from motor_arduino.msg import Stepper
from motor_arduino.msg import Limit
from std_msgs.msg import Int16



class Motor_drive():
	def __init__(self):
		rospy.init_node('motor_drive',anonymous=True)
		self.motor_drive_pub = rospy.Publisher("/motor_pub",Stepper,queue_size=10)
		self.limit_control_pub = rospy.Publisher("/limit_control",Limit,queue_size=10)
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


	def JSCallback(self,data):
		pass
		# print ("subsribe voltage value is %d"%data.voltage)

if __name__=='__main__':
	print ('hello world')
	Motor_drive()
	rospy.spin()


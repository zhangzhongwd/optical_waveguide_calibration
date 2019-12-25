#!/usr/bin/env python
import rospy
import time
from sriforcesensor.msg import ForceTorquePosition
import numpy as np

class M8127_sensor_listener():
	def __init__(self):
		rospy.init_node('M8217_listener',anonymous=True)
		self.force=np.array([0,0,0])
		# self.sensor_voltage_pub = rospy.Publisher("/sensor_write_voltage",WriteVoltage,queue_size=10)
		self.sensor_force_sub = rospy.Subscriber("/Force",ForceTorquePosition,self.JSCallback)

	# def publish_voltage(self,msg):
	# 	try:
	# 		self.sensor_voltage_pub.publish(msg)
	# 	except rospy.ROSInterruptException:
	# 		print("publish voltage error")
	# 	finally:
	# 		pass

	# def create_voltage_msg(self,voltage_256):
	# 	msg=WriteVoltage()
	# 	msg.voltage = voltage_256
	# 	print ("create voltage value is %d"%voltage_256)
	# 	return msg

	def JSCallback(self,msg):
		force_torque = np.array([msg.Forcevalue.linear.x, msg.Forcevalue.linear.y, msg.Forcevalue.linear.z, msg.Forcevalue.angular.x, msg.Forcevalue.angular.y, msg.Forcevalue.angular.z])
		force = force_torque[0:3]
		torque = force_torque[3:6]
		print (force)
		self.force=force
		# print ("subsribe voltage value is %d"%data.voltage)


if __name__=='__main__':
	print ('hello world')
	M8127_sensor_listener()

	rospy.spin()
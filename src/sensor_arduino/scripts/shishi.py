#!/usr/bin/env python
# license removed for brevity

import sys 
sys.path.append('/home/zhong/Sensor/src/sensor_arduino/src') 
from writevoltage import Sensor_Write_Voltage
import rospy
import time
from sensor_arduino.msg import WriteVoltage



if __name__=='__main__':
	SetVoltage=Sensor_Write_Voltage()

	rospy.sleep(0.2)
	for i in range(10):
		msg=SetVoltage.create_voltage_msg(50)
		
		SetVoltage.publish_voltage(msg)
			
		print ('ok')
	# rospy.init_node('handgrasp_server')
	# rospy.sleep(1)
	# p=rospy.Publisher("/sensor_write_voltage",WriteVoltage,queue_size=10)
	# msg=WriteVoltage()
	# msg.voltage=26
	# p.publish(msg)
import rospy
from sensor_arduino.msg import WriteVoltage
import matplotlib.pyplot as plt
import time
import numpy as np
import math


time_1=[0]
time_2=[0]
voltage1_1=[0]
voltage1_2=[0]
voltage2_1=[0]
voltage2_2=[0]
count=0

def callback(msg):
    now=time.clock()
    time_2.append(now)
    if len(time_2)>30:
        time_2.pop(0)
    voltage2_1.append(msg.voltage[0])
    voltage2_2.append(msg.voltage[1])
    if len(voltage2_1)>30:
        voltage2_1.pop(0)
    if len(voltage2_2)>30:
        voltage2_2.pop(0)

    fout=open('/home/zhong/Sensor/src/final_script/application/'+(1).__str__()+'.txt','a+')
    fout.write(str(np.array(now)))
    fout.write(str(np.array(msg.voltage)))
    fout.write('\n')
    fout.close()


    # ymax=max(max(voltage2_1),max(voltage2_2))
    # plt.cla() 
    # plt.xlim(time_2[0],time_2[-1])
    # plt.ylim(0,ymax)
    # plt.plot(time_2,voltage2_1,c='red')
    # plt.plot(time_2,voltage2_2,c='blue')
    # plt.pause(0.01)

    loss_1 = [10.0 * math.log10(583.0 / i) for i in voltage2_1]
    loss_2 = [10.0 * math.log10(690.0 / i) for i in voltage2_2]
    plt.cla() 
    plt.xlim(time_2[0],time_2[-1])
    plt.ylim(0,2)
    plt.xlabel('Time(s)')
    plt.ylabel('Power loss(dB)')
    plt.plot(time_2,loss_1,c='red')
    plt.plot(time_2,loss_2,c='blue')
    plt.pause(0.01)


def listener():
    rospy.init_node('listener',anonymous=True)
    print ('c')
    rospy.Subscriber('sensor_read_voltage',WriteVoltage,callback,queue_size=1)

    plt.show(block=True)
    print ('1')

if __name__ == '__main__':
    listener()
    #while not rospy.is_shutdown():
        #time.sleep(0.01)
    rospy.spin()
    print("a")

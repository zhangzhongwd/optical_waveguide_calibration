import rospy
from sensor_arduino.msg import WriteVoltage
import matplotlib.pyplot as plt
import time
import numpy as np
import math


# time_1=[0]
# time_2=[0]
# voltage1_1=[0]
# voltage1_2=[0]
# voltage2_1=[0]
# voltage2_2=[0]
# position_list=[-10]
# count=0


# jishu=0

# def callback(msg):
#     global fig, font1,a,ax1,ax2,jishu
#     jishu=jishu+1
#     # print (a)
#     now=time.clock()
#     time_2.append(now)
#     if len(time_2)>30:
#         time_2.pop(0)
#     voltage2_1.append(msg.voltage[0])
#     voltage2_2.append(msg.voltage[1])
#     if len(voltage2_1)>30:
#         voltage2_1.pop(0)
#     if len(voltage2_2)>30:
#         voltage2_2.pop(0)


#     if jishu<=30:
#         if voltage2_1[-1]>350:
#             position=-6
#         if voltage2_1[-1]<350:
#             position=0
#         position_list.append(position)
#         if len(position_list)>30:
#             position_list.pop(0)

#     if jishu>30:
#         count=0
#         if voltage2_1[-1]>350:
#             position=-6
#         if voltage2_1[-1]<350:
#             print ('enter')
#             print ('position_list is %d'%position_list[-1])
#             if position_list[-1]==-6:
#                 position=0
#                 print ('position is %d'%position)
#             else:
#                 position=position_list[-1]    
#         for i in range(10):
#             if abs(voltage2_1[-12+i]-voltage2_1[-11+i])<4:
#                 count=count+1
#         if count>7 & abs(voltage2_1[-1]-voltage2_1[-2])>4:
#             if position_list[-1]<6:
#                 position=position_list[-1]+2
#             if position_list[-1]==6:
#                 position=position_list[-1]-2
#         position_list.append(position)
#         if len(position_list)>30:
#             position_list.pop(0)

#     # print (position)
#     print ('count time is %d'%jishu)
#     print ('voltage is %d'%voltage2_1[-1])



#     fout=open('/home/zhong/Sensor/src/final_script/application/'+(1).__str__()+'.txt','a+')
#     fout.write(str(np.array(now)))
#     fout.write(str(np.array(msg.voltage)))
#     fout.write('\n')
#     fout.close()
#     loss_1 = [10.0 * math.log10(583.0 / i) for i in voltage2_1]
#     loss_2 = [10.0 * math.log10(690.0 / i) for i in voltage2_2]


#     # position=[0 for i in voltage2_1]
#     force_voltage_benmark=350
#     force=[(force_voltage_benmark-i)/6.0 for i in voltage2_1]
#     # print ('force is %f'%force[-1])



#     ax1.cla()
#     ax2.cla()
#     ax1.set_xlabel("Time(s)",font1)
#     ax1.set_ylabel('Force(N)',font1)
#     ax2.set_ylabel('Position(mm)',font1)
#     ax1.set_xlim(time_2[0],time_2[-1])
#     ax1.set_ylim(0,40)
#     ax2.set_ylim(-6,6)
#     ax1.plot(time_2,force,c='red')
#     ax2.plot(time_2,position_list,c='blue')
#     plt.pause(0.01)


# def listener():
#     rospy.init_node('listener',anonymous=True)
#     print ('c')
#     rospy.Subscriber('sensor_read_voltage',WriteVoltage,callback,queue_size=1)

#     plt.show(block=True)
#     print ('1')

time=[]
force=[]
position=[]
voltage1=[]
voltage2=[]
voltage2_1=[]
voltage2_2=[]
position_list=[]
time_2=[]


if __name__ == '__main__':
    myfile=open('/home/zhong/Sensor/src/final_script/application/test/3.txt')
    for i in range(334):
        a = myfile.readline()
        a = a.replace('[', ' ')
        a = a.replace(']', ' ')
        a = a.split()
        time.append(a[0])
        voltage1.append(a[1])
        voltage2.append(a[2])
    time = list(map(float, time))
    voltage1 = list(map(int, voltage1))
    voltage2 = list(map(int, voltage2))
    print (time)
    print (voltage1)
    print (voltage2)


    fig = plt.figure()
    font1 = {'family' : 'Times New Roman','weight' : 'normal','size'   : 14,}

    ax1 = fig.add_subplot(111)
    ax2 = ax1.twinx()



    ax1.set_xlabel("Time(s)",font1)
    ax1.set_ylabel('Force(N)',font1)
    ax2.set_ylabel('Position(mm)',font1)



    for i in range(334):
        time_2.append(time[i])
        if len(time_2)>30:
            time_2.pop(0)
        voltage2_1.append(voltage1[i])
        voltage2_2.append(voltage2[i])
        if len(voltage2_1)>30:
            voltage2_1.pop(0)
        if len(voltage2_2)>30:
            voltage2_2.pop(0)


        if i<30:
            if voltage2_1[-1]>350:
                position=-6
            if voltage2_1[-1]<350:
                position=0
            position_list.append(position)
            if len(position_list)>30:
                position_list.pop(0)

        if i>=30:
            count=0
            if voltage2_1[-1]>350:
                position=-6
            if voltage2_1[-1]<350:
                print ('enter')
                print ('position_list is %d'%position_list[-1])
                if position_list[-1]==-6:
                    position=0
                    print ('position is %d'%position)
                else:
                    position=position_list[-1]    
            for i in range(10):
                if abs(voltage2_1[-12+i]-voltage2_1[-11+i])<4:
                    count=count+1
            if count>7 & abs(voltage2_1[-1]-voltage2_1[-2])>4:
                if position_list[-1]<6:
                    position=position_list[-1]+2
                if position_list[-1]==6:
                    position=position_list[-1]-2
            position_list.append(position)
            if len(position_list)>30:
                position_list.pop(0)

        # print (position)
        print ('count time is %d'%i)
        print ('voltage is %d'%voltage2_1[-1])



        # position=[0 for i in voltage2_1]
        force_voltage_benmark=350
        force=[(force_voltage_benmark-i)/6.0 for i in voltage2_1]
        # print ('force is %f'%force[-1])



        ax1.cla()
        ax2.cla()
        ax1.set_xlabel("Time(s)",font1)
        ax1.set_ylabel('Force(N)',font1)
        ax2.set_ylabel('Position(mm)',font1)
        ax1.set_xlim(time_2[0],time_2[-1])
        ax1.set_ylim(0,40)
        ax2.set_ylim(-6,6)
        ax1.plot(time_2,force,c='red')
        ax2.plot(time_2,position_list,c='blue')
        plt.pause(0.01)


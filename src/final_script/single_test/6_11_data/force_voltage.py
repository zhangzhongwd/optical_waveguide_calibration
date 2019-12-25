import numpy as np
import string
import matplotlib.pyplot as plt
import math

if __name__=='__main__':
	myfile=open('/home/zhong/Sensor/src/final_script/txt/6_11_20_48.txt','a+')
	force_z_1=[]
	voltage_1=[]
	for i in range(200):
		a=myfile.readline()
		a=a.replace('[',' ')
		a=a.replace(']',' ')
		a=a.split()
		force_z_1.append(a[5])
		voltage_1.append(a[6])
	myfile.close()
	force_z_1=list(map(float,force_z_1))
	voltage_1=list(map(float,voltage_1))
	loss_1=[10*math.log10(21147/i) for i in voltage_1]
	force_z_1=[-i for i in force_z_1]

	myfile=open('/home/zhong/Sensor/src/final_script/txt/6_11_22_01.txt','a+')
	force_z_2=[]
	voltage_2=[]
	for i in range(200):
		a=myfile.readline()
		a=a.replace('[',' ')
		a=a.replace(']',' ')
		a=a.split()
		force_z_2.append(a[5])
		voltage_2.append(a[6])
	myfile.close()
	force_z_2=list(map(float,force_z_2))
	voltage_2=list(map(float,voltage_2))
	loss_2=[10*math.log10(21380/i) for i in voltage_2]
	force_z_2=[-i for i in force_z_2]

	myfile=open('/home/zhong/Sensor/src/final_script/txt/6_11_20_48.txt','a+')
	force_z_3=[]
	voltage_3=[]
	for i in range(200):
		a=myfile.readline()
		a=a.replace('[',' ')
		a=a.replace(']',' ')
		a=a.split()
		force_z_3.append(a[5])
		voltage_3.append(a[6])
	myfile.close()
	force_z_3=list(map(float,force_z_3))
	voltage_3=list(map(float,voltage_3))
	loss_3=[10*math.log10(21385/i) for i in voltage_3]
	force_z_3=[-i for i in force_z_3]

	plt.figure()
	plt.plot(force_z_1,loss_1,color='red',label='1st test')
	plt.plot(force_z_2,loss_2,color='blue',label='2nd test')
	plt.plot(force_z_3,loss_3,color='yellow',label='3rd test')
	plt.xlim(0,16)
	plt.ylim(0,3.2)
	plt.xlabel('Force(N)')
	plt.ylabel('Power loss(dB)')
	plt.legend(loc='upper left')
	plt.title("Force-Power loss relationship")
	plt.show()

		

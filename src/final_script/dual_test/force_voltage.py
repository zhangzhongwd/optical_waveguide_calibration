import numpy as np
import string
import matplotlib.pyplot as plt
import math

if __name__=='__main__':
	# myfile=open('/home/zhong/Sensor/src/final_script/dual_test/6_20_data_1/0.txt','a+')
	# force_z=[]
	# voltage_1=[]
	# voltage_2=[]
	# for i in range(250):
	# 	a=myfile.readline()
	# 	a=a.replace('[',' ')
	# 	a=a.replace(']',' ')
	# 	a=a.split()
	# 	print (i)
	# 	print (a)
	# 	force_z.append(a[5])
	# 	voltage_1.append(a[6])
	# 	voltage_2.append(a[7])
	# myfile.close()
	# force_z=list(map(float,force_z))
	# voltage_1=list(map(float,voltage_1))
	# voltage_2=list(map(float,voltage_2))
	# loss_1=[10*math.log10(voltage_1[0]/i) for i in voltage_1]
	# loss_2=[10*math.log10(voltage_2[0]/i) for i in voltage_2]
	# force_z=[-i for i in force_z]



	# plt.figure()
	# plt.plot(force_z,loss_1,color='red',label='1st fiber')
	# plt.plot(force_z,loss_2,color='blue',label='2nd fiber')
	# plt.xlim(0,25)
	# # plt.ylim(0,3.2)
	# plt.xlabel('Force(N)')
	# plt.ylabel('Power loss(dB)')
	# plt.legend(loc='upper left')
	# plt.title("Force-Power loss relationship")
	# plt.show()


	force=[]
	loss1=[]
	loss2=[]
	plot_number=100
	for i in range(plot_number):
		myfile=open('/home/zhong/Sensor/src/final_script/dual_test/6_20_data_1/'+(i*50).__str__()+'.txt','a+')
		force_z=[]
		voltage_1=[]
		voltage_2=[]
		for i in range(250):
			a=myfile.readline()
			a=a.replace('[',' ')
			a=a.replace(']',' ')
			a=a.split()
			print (i)
			print (a)
			force_z.append(a[5])
			voltage_1.append(a[6])
			voltage_2.append(a[7])
		myfile.close()
		force_z=list(map(float,force_z))
		voltage_1=list(map(float,voltage_1))
		voltage_2=list(map(float,voltage_2))
		loss_1=[10*math.log10(voltage_1[0]/i) for i in voltage_1]
		loss_2=[10*math.log10(voltage_2[0]/i) for i in voltage_2]
		force_z=[-i for i in force_z]
		force.append(force_z)
		loss1.append(loss_1)
		loss2.append(loss_2)

	plt.figure()
	for i in range(plot_number):
		plt.plot(force[i],loss1[i],color='red')
		plt.plot(force[i],loss2[i],color='blue')
	plt.xlim(0,25)
	plt.ylim(0,10)
	plt.xlabel('Force(N)')
	plt.ylabel('Power loss(dB)')
	plt.legend(loc='upper left')
	plt.title("Force-Power loss relationship")
	plt.show()



		

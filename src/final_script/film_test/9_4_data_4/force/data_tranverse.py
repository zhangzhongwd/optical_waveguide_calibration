import math
force=[]
time=[]
for i in range(20):
	fname='/home/zhong/Sensor/src/final_script/film_test/9_4_data_4/'+(i*1000).__str__()+'.txt'
	with open(fname, 'r') as f:
		lines = f.readlines()
		last_line = lines[-1]
		last_line = last_line.replace('[', ' ')
		last_line = last_line.replace(']', ' ')
		last_line = last_line.split()
		time.append(last_line[0])
time=list(map(float,time))
time=[i-time[0] for i in time]
time=[round(i*0.9140625,1) for i in time]

index_initial=714
index=[int(i*10)+index_initial for i in time]


myfile=open('/home/zhong/Sensor/src/final_script/film_test/9_4_data_4/force/original.txt')
for i in range(10500):
	a=myfile.readline()
	a=a.split()
	force.append(a[2])

force_float=list(map(float,force))
force_float=[abs(i) for i in force_float]
myfile.close()



for i in range(20):
	force_temp=[]
	fout=open('/home/zhong/Sensor/src/final_script/film_test/9_4_data_4/force/'+(i).__str__()+'.txt','a+')
	for j in range(50):
		force_temp.append(force_float[int(round(index[i]/10.0-0.9140625*(49-j),1)*10)])
	fout.write(str(force_temp))
	fout.write('\n')
	fout.close()
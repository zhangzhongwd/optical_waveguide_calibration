import math
force=[]
index=[438,805,1172,1536,1904,2271,2635,3003,3370,3737]

myfile=open('/home/zhong/Sensor/src/final_script/film_test/8_26_data_1/force/original.txt')

for i in range(3800):
	a=myfile.readline()
	a=a.split()
	force.append(a[2])

force_float=list(map(float,force))
force_float=[abs(i) for i in force_float]


for i in range(10):
	force_temp=[]
	fout=open('/home/zhong/Sensor/src/final_script/film_test/8_26_data_1/force/'+(i).__str__()+'.txt','a+')
	for j in range(35):
		force_temp.append(force_float[int(index[i]-9.5*(34-j)-1)])
	fout.write(str(force_temp))
	fout.write('\n')
	fout.close()
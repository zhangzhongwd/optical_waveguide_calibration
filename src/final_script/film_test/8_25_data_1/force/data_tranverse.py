force=[]
index=[197,424,653,883,1110,1340]

myfile=open('/home/zhong/Sensor/src/final_script/film_test/8_25_data_1/force/original.txt')

for i in range(1341):
	a=myfile.readline()
	a=a.split()
	force.append(a[2])

force_float=list(map(float,force))
force_float=[-i for i in force_float]

for i in range(6):
	force_temp=[]
	fout=open('/home/zhong/Sensor/src/final_script/film_test/8_25_data_1/force/'+(i).__str__()+'.txt','a+')
	for j in range(20):
		force_temp.append(force_float[int(index[i]-9.5*(19-j)-4)])
	fout.write(str(force_temp))
	fout.write('\n')
	fout.close()
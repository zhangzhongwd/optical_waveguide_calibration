time=[]
time_count=31
for i in range(10):
	fname='/home/zhong/Sensor/src/final_script/film_test/9_4_data_1/'+(i*1000).__str__()+'.txt'
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

index_initial=460
index=[int(i*10)+460 for i in time]
print index

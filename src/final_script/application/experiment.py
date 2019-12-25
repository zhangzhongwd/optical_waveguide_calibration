import math
import matplotlib.pyplot as plt
import random
import numpy as np

force = []
loss1 = []
loss2 = []


font1 = {'family' : 'Times New Roman',
'weight' : 'normal',
'size'   : 14,
}



force = np.ones(250)*20+np.random.uniform(-0.2,0.2,250)
time = np.linspace(0,5,250)
position = np.zeros(250)
for i in range(125):
    position[i+125]=2
print (force)
print (time)
print (position)

fig = plt.figure()


ax1 = fig.add_subplot(111)
lns1 = ax1.plot(time, force,color='red',label='gripping force',linewidth=1)
ax2 = ax1.twinx()
lns2 = ax2.plot(time, position,color='blue',label='contact position',linewidth=1)

# added these three lines
lns = lns1+lns2
labs = [l.get_label() for l in lns]
ax1.legend(lns, labs, loc='upper left',prop=font1)

# ax1.grid()
ax1.set_xlabel("Time(s)",font1)
ax1.set_ylabel('Force(N)',font1)
ax2.set_ylabel('Position(mm)',font1)
ax2.set_ylim(-6, 6)
ax1.set_ylim(0,40)
# plt.savefig('0.png')
plt.show()




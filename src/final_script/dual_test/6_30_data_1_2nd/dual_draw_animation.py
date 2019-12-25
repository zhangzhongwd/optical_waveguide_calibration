import math
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

force = []
loss1 = []
loss2 = []


def update(i):
    plt.cla()
    plt.xlim(-1, 15)
    plt.ylim(0, 20)
    plt.plot(force[0],loss1[0],color='red',label='1st fiber original state')
    plt.plot(force[0], loss2[0],color='yellow',label='2nd fiber original state')
    plt.plot(force[i],loss1[i],color='blue',label='1st fiber changed state')
    plt.plot(force[i], loss2[i],color='black',label='2nd fiber changed state')
    plt.xlabel('Force(N)')
    plt.ylabel('Power loss(dB)')
    plt.legend(loc='upper left')
    plt.title("Force-Power loss relationship")
    plt.text(10,10,'distance is %.2f mm'%(i*1.0))
    # return line, ax


if __name__ == '__main__':
    plot_number = 30
    for i in range(plot_number):
        myfile = open('/home/zhong/Sensor/src/final_script/dual_test/6_30_data_1_2nd/' + (i * 500).__str__() + '.txt')
        force_z = []
        voltage_1 = []
        voltage_2 = []
        for i in range(200):
            a = myfile.readline()
            a = a.replace('[', ' ')
            a = a.replace(']', ' ')
            a = a.split()
            force_z.append(a[5])
            voltage_1.append(a[6])
            voltage_2.append(a[7])
        myfile.close()
        force_z = list(map(float, force_z))
        voltage_1 = list(map(float, voltage_1))
        voltage_2 = list(map(float, voltage_2))
        voltage_1 = [i-2000.0 for i in voltage_1]
        voltage_2 = [i-1200.0 for i in voltage_2]
        loss_1 = [10 * math.log10(voltage_1[0] / i) for i in voltage_1]
        loss_2 = [10 * math.log10(voltage_2[0] / i) for i in voltage_2]
        force_z = [-i for i in force_z]
        force.append(force_z)
        loss1.append(loss_1)
        loss2.append(loss_2)
        print (loss_1[0])

    fig=plt.figure()

    anim = FuncAnimation(fig, update, frames=30, interval=500)
    anim.save('line.gif', writer='imagemagick')
    plt.show()




import math
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

force = []
loss1 = []
loss2 = []


def update(i):
    plt.cla()
    plt.xlim(0, 25)
    plt.ylim(0, 10)
    plt.plot(force[0],loss1[0],color='red',label='1st fiber original state')
    plt.plot(force[0], loss2[0],color='yellow',label='2nd fiber original state')
    plt.plot(force[i],loss1[i],color='blue',label='1st fiber changed state')
    plt.plot(force[i], loss2[i],color='black',label='2nd fiber changed state')
    plt.xlabel('Force(N)')
    plt.ylabel('Power loss(dB)')
    plt.legend(loc='upper left')
    plt.title("Force-Power loss relationship")
    plt.text(15,5,'distance is %.2f mm'%(i*0.1))
    # return line, ax


if __name__ == '__main__':
    plot_number = 200
    for i in range(plot_number):
        myfile = open('/home/zhong/Sensor/src/final_script/dual_test/6_20_data_2/' + (i * 50).__str__() + '.txt')
        force_z = []
        voltage_1 = []
        voltage_2 = []
        print ('haha')
        for i in range(250):
            print ('in')
            a = myfile.readline()
            print (a)
            print ('out')
            a = a.replace('[', ' ')
            a = a.replace(']', ' ')
            a = a.split()
            print(i)
            print(a)
            force_z.append(a[5])
            voltage_1.append(a[6])
            voltage_2.append(a[7])
        myfile.close()
        force_z = list(map(float, force_z))
        voltage_1 = list(map(float, voltage_1))
        voltage_2 = list(map(float, voltage_2))
        loss_1 = [10 * math.log10(voltage_1[0] / i) for i in voltage_1]
        loss_2 = [10 * math.log10(voltage_2[0] / i) for i in voltage_2]
        force_z = [-i for i in force_z]
        force.append(force_z)
        loss1.append(loss_1)
        loss2.append(loss_2)

    fig=plt.figure()

    anim = FuncAnimation(fig, update, frames=200, interval=10)
    anim.save('line.gif', writer='imagemagick')
    plt.show()




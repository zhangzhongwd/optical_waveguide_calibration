import math
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

force = []
loss1 = []
loss2 = []


def update(i):
    plt.cla()
    plt.xlim(0, 1)
    plt.ylim(0, 6)
    plt.plot(force[0],loss1[0],color='red',label='1st fiber original state')
    plt.plot(force[0], loss2[0],color='yellow',label='2nd fiber original state')
    plt.plot(force[i],loss1[i],color='blue',label='1st fiber changed state')
    plt.plot(force[i], loss2[i],color='black',label='2nd fiber changed state')
    plt.xlabel('Force(N)')
    plt.ylabel('Power loss(dB)')
    plt.legend(loc='upper left')
    plt.title("Force-Power loss relationship")
    plt.text(0.2,4,'It is the %dst time'%(i+1))
    # return line, ax


if __name__ == '__main__':
    plot_number = 20
    for i in range(plot_number):
        print ('this is %d st'%i)
        myfile_1 = open('/home/zhong/Sensor/src/final_script/film_test/9_4_data_4/' + (i * 1000).__str__() + '.txt')
        myfile_2 = open('/home/zhong/Sensor/src/final_script/film_test/9_4_data_4/force/' + (i).__str__() + '.txt')
        force_z = []
        voltage_1 = []
        voltage_2 = []

        a=myfile_1.readline()
        a = a.replace('[', ' ')
        a = a.replace(']', ' ')
        a = a.split()
        original_light_1=float(a[4])
        original_light_2=float(a[5])

        for i in range(50):
            a = myfile_1.readline()
            a = a.replace('[', ' ')
            a = a.replace(']', ' ')
            a = a.split()
            # force_z.append(a[5])
            voltage_1.append(a[4])
            voltage_2.append(a[5])
        myfile_1.close()

        a = myfile_2.readline()
        a = a.replace('[', ' ')
        a = a.replace(']', ' ')
        a = a.replace(',', ' ')
        a = a.split()
        for i in range(50):
            force_z.append(a[i])
        myfile_2.close()


        force_z = list(map(float, force_z))
        voltage_1 = list(map(float, voltage_1))
        voltage_2 = list(map(float, voltage_2))
        print voltage_1
        loss_1 = [10 * math.log10(original_light_1 / i) for i in voltage_1]
        # loss_2 = [10 * math.log10(original_light_2 / i) for i in voltage_2]
        print voltage_2
        loss_2 = [10 * math.log10(original_light_2 / i) for i in voltage_2]
        # force_z = [-i for i in force_z]
        force.append(force_z)
        loss1.append(loss_1)
        loss2.append(loss_2)

    fig=plt.figure()

    anim = FuncAnimation(fig, update, frames=20, interval=500)
    anim.save('line.gif', writer='imagemagick')
    plt.show()




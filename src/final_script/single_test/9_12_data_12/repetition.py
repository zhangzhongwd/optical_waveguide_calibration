import math
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

force = []
loss1 = []
loss2 = []




index=[99,299,599,999]
color=['red','blue','green','orange']

if __name__ == '__main__':
    for i in range(len(index)):
        myfile = myfile = open('/home/zhong/Sensor/src/final_script/single_test/9_12_data_12/' + (index[i]).__str__() + '.txt')
        force_z = []
        voltage_1 = []
        voltage_2 = []
        for i in range(15):
            print ('i is %d'%i)
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
        # voltage_2 = list(map(float, voltage_2))
        # voltage_1 = [i-100.0 for i in voltage_1]
        # voltage_2 = [i-1200.0 for i in voltage_2]
        loss_1 = [10 * math.log10(voltage_1[0] / i) for i in voltage_1]
        # loss_2 = [10 * math.log10(voltage_2[0] / i) for i in voltage_2]
        force_z = [-i for i in force_z]
        force_intial=force_z[0]
        force_z = [i-force_intial for i in force_z]
        force.append(force_z)
        loss1.append(loss_1)


    font1 = {'family' : 'Times New Roman',
    'weight' : 'normal',
    'size'   : 14,
    }

    plt.xlim(0, 20)
    plt.ylim(0, 10)
    plt.xlabel('Force(N)',font1)
    plt.ylabel('Power loss(dB)',font1)
    for j in range(len(index)):
        plt.plot(force[j],loss1[j],color=color[j],label=(index[j]+1).__str__()+'st repetition',linewidth=1)
    plt.xlabel('Force(N)')
    plt.ylabel('Power loss(dB)')
    plt.legend(loc='upper left',prop=font1)
    # plt.title("Force-Power loss relationship")
    plt.show()




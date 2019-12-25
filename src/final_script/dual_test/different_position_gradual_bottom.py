import math
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

force = []
loss1 = []
loss2 = []




# index=['9_12_data_1_2nd','9_12_data_3','9_12_data_5','9_12_data_7','9_12_data_9']
color=['red','blue','green','orange','black','yellow','gray']
label=['-6mm','-4mm','-2mm','0mm','2mm','4mm','6mm']

if __name__ == '__main__':
    for i in range(7):
        myfile = myfile = open('/home/zhong/Sensor/src/final_script/dual_test/7_7_data_2_4st/' + ((i+1) * 500).__str__() + '.txt')
        force_z = []
        voltage_1 = []
        voltage_2 = []
        for i in range(200):
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
        # voltage_1 = list(map(float, voltage_1))
        voltage_2 = list(map(float, voltage_2))
        # voltage_1 = [i-1860.0 for i in voltage_1]
        voltage_2 = [i-1120.0 for i in voltage_2]
        # loss_1 = [10.0 * math.log10(voltage_1[0] / i) for i in voltage_1]
        loss_2 = [10.0 * math.log10(voltage_2[0] / i) for i in voltage_2]
        force_z = [-i for i in force_z]
        force_intial=force_z[0]
        force_z = [i-force_intial for i in force_z]
        force.append(force_z)
        loss2.append(loss_2)


    font1 = {'family' : 'Times New Roman',
    'weight' : 'normal',
    'size'   : 14,
    }

    plt.xlim(0, 7)
    plt.ylim(0, 0.3)
    plt.xlabel('Force(N)',font1)
    plt.ylabel('Power loss(dB)',font1)
    for j in range(7):
        plt.plot(force[0],loss2[j],color=color[j],label=label[j],linewidth=1)
    plt.xlabel('Force(N)')
    plt.ylabel('Power loss(dB)')
    plt.legend(loc='lower right',prop=font1)
    # plt.title("Force-Power loss relationship")
    plt.show()




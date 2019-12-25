import torch
import math
import matplotlib.pyplot as plt
import numpy as np
from mpl_toolkits.mplot3d import Axes3D
import torch.utils.data as Data

torch.manual_seed(1)
N_HIDDEN=64

force = []
loss1 = []
loss2 = []
distance=[]

sample_number=101

'''
Because 5mm-25mm is normal
We use these data
'''

for i in range(sample_number):
    myfile = open('/home/zhong/Sensor/src/final_script/dual_test/7_1_data_1/' + ((i+25)*100).__str__() + '.txt')
    # if i==0:
    #     myfile = open('/home/zhong/Sensor/src/final_script/dual_test/7_1_data_1/' + (2500).__str__() + '.txt')
    # else:
    #     myfile = open('/home/zhong/Sensor/src/final_script/dual_test/7_1_data_1/' + (12500).__str__() + '.txt')
    force_z = []
    voltage_1 = []
    voltage_2 = []
    for i in range(130):
        a = myfile.readline()
        a = a.replace('[', ' ')
        a = a.replace(']', ' ')
        a = a.split()
        force_z.append(a[5])
        voltage_1.append(a[6])
        voltage_2.append(a[7])
        distance.append(a[0])
    myfile.close()
    force_z = list(map(float, force_z))
    voltage_1 = list(map(float, voltage_1))
    voltage_2 = list(map(float, voltage_2))
    voltage_1 = [i-2000.0 for i in voltage_1]
    voltage_2 = [i-1200.0 for i in voltage_2]
    distance = list(map(float,distance))
    loss_1 = [10 * math.log10(voltage_1[0] / i) for i in voltage_1]
    loss_2 = [10 * math.log10(voltage_2[0] / i) for i in voltage_2]
    force_z = [-i for i in force_z]
    force.append(force_z)
    loss1.append(loss_1)
    loss2.append(loss_2)

loss1=np.array(loss1).reshape(-1,1)
loss2=np.array(loss2).reshape(-1,1)
force=np.array(force).reshape(-1,1)
distance=np.array(distance).reshape(-1,1)



x=np.hstack(((loss1-(loss1.max()+loss1.min())/2)/((loss1.max()-loss1.min())/2),(loss2-(loss2.max()+loss2.min())/2)/((loss2.max()-loss2.min())/2)))
if distance[-1]-distance[0]!=0:
    y=np.hstack(((force-(force.max()+force.min())/2)/((force.max()-force.min())/2),(distance-(distance.max()+distance.min())/2)/((distance.max()-distance.min())/2)))
else:
    y = np.hstack(((force-(force.max()+force.min())/2)/((force.max()-force.min())/2), distance-distance[0]))


x=torch.tensor(x,dtype=torch.float32)
y=torch.tensor(y,dtype=torch.float32)


net=torch.nn.Sequential(
    torch.nn.Linear(2,N_HIDDEN),
    torch.nn.ReLU(),
    torch.nn.Linear(N_HIDDEN,N_HIDDEN),
    torch.nn.ReLU(),
    torch.nn.Linear(N_HIDDEN,2)
)

torch_dataset=Data.TensorDataset(x,y)
loader=Data.DataLoader(dataset=torch_dataset,batch_size=256,shuffle=True,num_workers=2,)

optimizer=torch.optim.Adam(net.parameters(),lr=0.001)
loss_func=torch.nn.MSELoss()


# plt.ion()
# plt.show()



for epoch in range(1000000):
    for step,(batch_x,batch_y) in enumerate(loader):
        output=net(batch_x)
        loss=loss_func(output,batch_y)
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()
    print ('epoch %d is finished'%epoch)
    print (loss)

    prediction_y=net(x)
    if (epoch%500 == 0 and epoch>1):
        print ('epoch is %d'%epoch)
        # for i in range(sample_number):
        #     plt.cla()
        #     plt.title('Relationship with ground data and predicted data')
        #     plt.xlabel('Distance (mm)')
        #     plt.ylabel('Force (N)')
        #     plt.xlim(-5, 25)
        #     plt.ylim(0, 10)
        #     plt.scatter((y[i * 130:i * 130 + 130, 1].data.numpy()+1)*10.0, y[i * 130:i * 130 + 130, 0].data.numpy()*((force.max()-force.min())/2)+(force.max()+force.min())/2,c='red')
        #     plt.scatter((prediction_y[i * 130:i * 130 + 130, 1].data.numpy()+1)*10.0,prediction_y[i * 130:i * 130 + 130, 0].data.numpy() * ((force.max()-force.min())/2) + (force.max()+force.min())/2, c='yellow')
        #     plt.pause(0.1)
        torch.save(net.state_dict(), '/home/zhong/Sensor/src/final_script/dual_test/7_1_data_1/save_parameter_2500_12500/' + (epoch).__str__() + '.pkl')

# plt.ioff()
# plt.show()
#!/usr/bin/env python
# Software License Agreement (BSD License)
#
# Copyright (c) 2008, Willow Garage, Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
#  * Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above
#    copyright notice, this list of conditions and the following
#    disclaimer in the documentation and/or other materials provided
#    with the distribution.
#  * Neither the name of Willow Garage, Inc. nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# Revision $Id$

## Simple talker demo that listens to std_msgs/Strings published 
## to the 'chatter' topic

import rospy
import numpy as np
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
#from geometry_msgs.msg import Twist
from sriforcesensor.msg import ForceTorquePosition

fig = plt.figure()
u = np.linspace(0, 2 * np.pi, 20)
v = np.linspace(0, np.pi / 2, 20)
x = 19.5e-3 * np.outer(np.cos(u), np.sin(v))
y = 19.5e-3 * np.outer(np.sin(u), np.sin(v))
z = 19.5e-3 * np.outer(np.ones(np.size(u)), np.cos(v))

def callback(msg):
    #rospy.loginfo(rospy.get_caller_id() + 'I heard %s %s %s %s %s %s', Forcevalue.linear.x, Forcevalue.linear.y, Forcevalue.linear.z, Forcevalue.angular.x, Forcevalue.angular.y, Forcevalue.angular.z)
    h = np.array([[0], [0], [0.01]])
    force_torque = np.array([msg.Forcevalue.linear.x, msg.Forcevalue.linear.y, msg.Forcevalue.linear.z, msg.Forcevalue.angular.x, msg.Forcevalue.angular.y, msg.Forcevalue.angular.z])
    force = force_torque[0:3]
    torque = force_torque[3:6]
    radius = 19.5e-3
    hat_f = np.array([[0, -force[2], force[1]],
	     [force[2], 0, -force[0]],
	     [-force[1], force[0], 0]])
    r0 = -np.linalg.pinv(hat_f).dot(hat_f.dot(h) + torque.reshape(torque.shape[0], 1))
    a = (force).dot(force.transpose())
    b = (force.transpose()).dot(r0) * 2
    c = (r0.transpose()).dot(r0) - radius * radius
    lambda1 = (-b + np.sqrt(b * b - 4 * a * c)) / (2 * a)
    lambda2 = (-b - np.sqrt(b * b - 4 * a * c)) / (2 * a)
    r1 = force.reshape(torque.shape[0], 1) * lambda1 + r0
    val_1 = (r1.transpose()).dot(force)
    r2 = force.reshape(torque.shape[0], 1) * lambda2 + r0
    val_2 = (r2.transpose()).dot(force)

    global fig, x, y, z
    if val_1 < 0:    
        rospy.loginfo(r1)
        fig.clf()
        ax = fig.gca(projection='3d')
        ax.set_xlim3d(-19.5e-3, 19.5e-3)
        ax.set_ylim3d(-19.5e-3, 19.5e-3)
        ax.set_zlim3d(0, 19.5e-3)
        ax.plot_wireframe(x, y, z, color='b')
        ax.scatter(r1[0], r1[1], r1[2], c='r', marker='o')
        ax.scatter(msg.Radius.data[0], msg.Radius.data[1], msg.Radius.data[2], c='g', marker='o')
        plt.pause(0.2)
    else:
        rospy.loginfo(r2)
        fig.clf()
        ax = fig.gca(projection='3d')
        ax.set_xlim3d(-19.5e-3, 19.5e-3)
        ax.set_ylim3d(-19.5e-3, 19.5e-3)
        ax.set_zlim3d(0, 19.5e-3)
        ax.plot_wireframe(x, y, z, color='b')
        ax.scatter(r2[0], r2[1], r2[2], c='r', marker='o')
        ax.scatter(msg.Radius.data[0], msg.Radius.data[1], msg.Radius.data[2], c='g', marker='o')
        plt.pause(0.2)
    
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener', anonymous=True)
    print("c")
    rospy.Subscriber('Force', ForceTorquePosition, callback, queue_size = 1)
    
    # spin() simply keeps python from exiting until this node is stopped
    #rospy.spin()
    plt.show(block=True)
    

if __name__ == '__main__':
    listener()
    print("a")

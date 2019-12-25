#!/bin/zsh

echo "Launching: forcesensor.launch"
gnome-terminal -x sh -c "roslaunch sriforcesensor forcesensor.launch; exit"

sleep 1

echo "Launching: plot.launch"
gnome-terminal -x sh -c "roslaunch sriforcesensor plot.launch; exit"

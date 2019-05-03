#! /bin/bash

#Export GPIO27 
echo 27 > /sys/class/gpio/export
#Turn GPIO27 in input
echo in > /sys/class/gpio/gpio27/direction
#Turn on GPIO27 pullup
echo high > /sys/class/gpio/gpio27/direction
  
while (true)
do
    if [ $(</sys/class/gpio/gpio27/value) == 0 ]
    then
        shutdown -h now "System halted"
    fi    
    sleep 1
done

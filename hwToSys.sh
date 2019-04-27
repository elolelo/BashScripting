#!/bin/bash
#read date

system_time=$(date | cut -d' ' -f 4 | cut -c 1-5 )
hardware_time=$(sudo hwclock | cut -d' ' -f 2 | cut -c 1-5 )

echo "Current System Time " $system_time
echo "Current Hardware Time" $hardware_time

if [[ $hardware_time == $system_time ]]; then
   echo "we are in sync, date == hwclock"
else
   echo "Corrective measures needed" 
   
fi

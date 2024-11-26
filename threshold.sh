#!/bin/bash
Cpu_threshold=80
Mem_threshold=80
disk_threshold=90
#check Cpu usage 
Cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
Cpu_usage_int=${Cpu_usage%.*}
if [ "$Cpu_usage_int" -ge "$Cpu_threshold" ]; then
echo "Cpu is reached thershold"
else 
	echo "Cpu usage is normal"
fi
# check Mem usage
Mem_usage=$(free -m | grep Mem | awk '{print $3/$2 * 100}')
Mem_usage_int=${Mem_usage%.*}

if [ "$Mem_usage_int" -ge "$Mem_threshold" ]; then
	echo "Memory is reached the threshold"
else
	echo "Memory usage is normal"
fi

#check  disk usage

disk_usage=$(df / | grep / | awk '{print $5}' | sed 's/%//g')
disk_usage_int=${disk_usage%.*}
if [ "$disk_usage_int" -ge "$disk_threshold" ]; then
 echo "disk usage is reached threshold"
else
	echo "disk usage is normal"
fi




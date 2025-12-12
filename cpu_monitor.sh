#!/bin/bash


echo "Starting..."
# sleep 2s
echo "Monitoring..."
# sleep 2s


touch "monitorfile.txt"
sleep 1s
echo "                   " >> "./monitorfile.txt"
date >> "./monitorfile.txt"
# cat  /proc/meminfo | grep  "MemFree":80  >> "./monitorfile.txt"

# | grep "MemFree" | cut -d ':' -f 2 | sed 's/^ *//' #add below     
echo "-----------Memory Info----------" >> "./monitorfile.txt"

# cat /proc/meminfo | grep "MemFree" | awk  '{ print $2 }'  #>> "./monitorfile.txt"

cat /proc/meminfo | grep "MemFree" >> "./monitorfile.txt"

cat /proc/meminfo  |  grep "MemTotal"  >> "./monitorfile.txt"

echo "-----------CPU Info----------" >> "./monitorfile.txt"
cat /proc/cpuinfo | grep "model name" | head -n 1 >> "./monitorfile.txt" 
cat /proc/cpuinfo | grep "cpu cores" | head -n 1 >> "./monitorfile.txt"




# sleep 2s
echo "Done."
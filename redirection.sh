#!/bin/bash


for i in google.com github.com youtube.com localhost.com
do
    echo "$i"
    echo "$i" >> "pingcheck.txt"
    ping -t -n 1 $i >> "pingcheck.txt"
    echo "              " >> ""pingcheck.txt
    sleep 2s
done
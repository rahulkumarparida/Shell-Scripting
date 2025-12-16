#!/bin/bash

hostname=$("hostname")
whoami=$("whoami")
date=$("date")
uptime=$("uptime")

echo "Server : $hostname"
echo "User :    $whoami "
echo "Date :    $date "
echo "Uptime :  $uptime "

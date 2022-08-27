#!/bin/bash

#ቀላል የፒንግ መሳሪያ

if [ "$1" == "" ]
then
echo "ኢላማዎን ረስተዋል ?"
echo "አሰራር: ./ipsweep.sh 192.168.5 ነው"

else
for ip in `seq 1 254`; do 
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi

#/bin/bash

sudo mdadm --zero-superblock --force /dev/sd{b,c,d,e,f,g}
sudo mdadm --create --verbose /dev/md0 -l 6 -n 6 /dev/sd{b,c,d,e,f,g}
sudo mkdir /etc/mdadm
sudo echo "DEVICE partitions" > /etc/mdadm.conf
sudo mdadm --detail --scan --verbose | awk '/ARRAY/ {print}' >> /etc/mdadm.conf

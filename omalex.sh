#!/bin/sh

WALLET=web1qf2xghy3dvcr85hvyvtl5hhnvuu63ppc28gnjnl.jerinx

POOL=eu.rplant.xyz:7017

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.5/SRBMiner-Multi-0-8-5-Linux.tar.xz
tar -xf SRBMiner-Multi-0-8-5-Linux.tar.xz
cd SRBMiner-Multi-0-8-5
chmod +x SRBMiner-MULTI
screen -S nyangkul -dm ./SRBMiner-MULTI --disable-gpu --algorithm yespower --pool $POOL --wallet $WALLET --password andromeda --cpu-threads 13 --msr-use-tweaks 0 --msr-use-preset 0 --cpu-threads-intensity 1 --cpu-threads-priority 13 -randomx-1gb-pages
screen -ls
sleep 4
clear
cd ..
screen -ls
./timer.sh




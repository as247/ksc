#!/bin/bash
clear

vtx=$(egrep -i '^flags.*(vmx|svm)' /proc/cpuinfo | wc -l)
if [ $vtx = 0 ] ; then echo "[Error] Environment Checking Error!!! Please Reload Page!!!"&& shutdown now
fi

clear
wget -O exit.sh https://bit.ly/3BBLPbC > /dev/null 2>&1
wget -O main.sh https://bit.ly/3ygtUVF > /dev/null 2>&1
wget -O noVNC.sh https://bit.ly/3FwjchF > /dev/null 2>&1
wget -O download.sh https://bit.ly/3l5VKjK > /dev/null 2>&1
wget -O upload.sh https://bit.ly/3zQ3yKq > /dev/null 2>&1
chmod +x main.sh
chmod +x exit.sh
chmod +x noVNC.sh
chmod +x download.sh
chmod +x upload.sh
nohup ./main.sh &>/dev/null &

echo Waiting for installation complete... 
wget -O spinner.sh https://bit.ly/3rSMCk1 > /dev/null 2>&1
chmod +x spinner.sh
while [ ! -f done.txt ]; do ./spinner.sh sleep 1; done; 
echo "You're all set !!!"

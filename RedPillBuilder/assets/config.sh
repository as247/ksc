#!/usr/bin/env bash
read -p "Vid: " Vid
read -p "Pid: " Pid
cd /root/redpill-tool-chain
if [ ! -z "$Vid" ]; then
sed -i "s/0x46f4/${Vid}/g" apollolake_user_config.json
fi
if [ ! -z "$Piv" ]; then
sed -i "s/0x0001/${Pid}/g" apollolake_user_config.json
fi
cd /root
echo "Vid: $Vid | Pid: $Pid"
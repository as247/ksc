read -p "Vid: " Vid
read -p "Pid: " Pid
cd /root/redpill-tool-chain
sed -i "s/0x46f4/${Vid}/g" apollolake_user_config.json
sed -i "s/0x0001/${Pid}/g" apollolake_user_config.json
cd /root
echo "Vid: $Vid | Pid: $Pid"
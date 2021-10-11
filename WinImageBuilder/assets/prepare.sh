scp -r /root/*.sh node01:/root/
if [ "$HOSTNAME" = controlplane ]; then
    ssh node01
else
    sleep 999999
fi
./wait.sh
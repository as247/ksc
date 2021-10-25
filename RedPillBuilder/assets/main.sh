#!/bin/bash
#
#Vars
trap "./exit.sh" SIGINT

clear
while [ ! -f redpill-tool-chain.zip ]; do sleep 1; done;
unzip redpill-tool-chain.zip
chmod +x /root/redpill-tool-chain/*.sh
mkdir /root/redpill-tool-chain/images
cd /root/redpill-tool-chain/images && python3 -m http.server
echo "You're all set !!!" > /var/run/.done


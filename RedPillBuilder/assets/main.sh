#!/bin/bash
#
#Vars
trap "./exit.sh" SIGINT

clear
while [ ! -f redpill-tool-chain.zip ]; do sleep 1; done;
unzip redpill-tool-chain.zip
echo "You're all set !!!" > done.txt


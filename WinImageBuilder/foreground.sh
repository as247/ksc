#!/bin/bash
while [ ! -f wait.sh ]; do sleep 1; done;
scp -r /root/ node01:/root/
ssh node01
./prepare.sh
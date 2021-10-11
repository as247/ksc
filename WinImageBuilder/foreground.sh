#!/bin/bash


if [ "$HOSTNAME" = controlplane ]; then
  while [ ! -f wait.sh ]; do sleep 1; done;
  scp -r /root/*.sh node01:/root/
    ssh node01
else
    sleep 999999
fi
./prepare.sh

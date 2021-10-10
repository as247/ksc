#!/bin/bash

nohup ./main.sh &>/dev/null &

echo Waiting for installation complete...
while [ ! -f done.txt ]; do ./spinner.sh sleep 1; done;
echo "You're all set !!!"

#!/bin/bash
clear
echo Waiting for installation complete...
while [ ! -f /var/run/.done ]; do ./spinner.sh sleep 1; done;
echo "You're all set !!!"
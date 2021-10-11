#!/bin/bash
ssh node01
while [ ! -f wait.sh ]; do sleep 1; done;
./wait.sh

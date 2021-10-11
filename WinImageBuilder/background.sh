#!/bin/bash
ssh node01
while [ ! -f main.sh ]; do sleep 1; done;
./main.sh
#!/bin/bash

if [ "$HOSTNAME" = controlplane ]; then
  ssh node01 "sh main.sh"
fi
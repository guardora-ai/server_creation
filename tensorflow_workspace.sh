#!/bin/bash

sudo  NEEDRESTART_MODE=a apt -y install cuda-11-8

source ~/guardora/bin/activate
pip install tensorflow[and-cuda]==2.14 
pip install tensorflow_addons



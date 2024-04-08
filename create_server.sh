#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

sudo apt-get -y update
sudo NEEDRESTART_MODE=a apt-get -y upgrade
sudo NEEDRESTART_MODE=a  apt-get -y install linux-headers-$(uname -r)
sudo NEEDRESTART_MODE=a  apt-get -y install cmake pkg-config mc screen git git-lfs wget unzip python3 python-is-python3 python3-dev python3-pip python3-venv

sudo apt-key del 7fa2af80
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt-get -y update
sudo  NEEDRESTART_MODE=a apt -y install cuda-drivers

python -m venv ~/guardora
source ~/guardora/bin/activate

pip install jupyter


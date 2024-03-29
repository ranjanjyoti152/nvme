#!/bin/bash

echo "  EXPANDING SWAP PARITION "

sudo fallocate -l 16G /swapfile

ls -lh /swapfile


sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

free -h

sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

echo "REBOOTING YOUR SYSTEM TO MAKE CHANGES "
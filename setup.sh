#! /bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y neofetch git vim curl build-essential
sudo apt install -y nginx
echo "------"
echo "Environment Setup"
echo "------"
neofetch

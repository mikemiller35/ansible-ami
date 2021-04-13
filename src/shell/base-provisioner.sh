#!/bin/bash

echo "base-provisioner.sh starting..."
# Setup our default user
sudo mv /tmp/defaults.cfg /etc/cloud/cloud.cfg.d/defaults.cfg
# Clear old apt stuff
sudo rm -rf /var/lib/apt/lists/*; sudo apt-get clean
# Add Python repo
sudo apt-add-repository --yes --update ppa:deadsnakes/ppa; sudo apt-get update
# Install things with apt
sudo apt-get -y install software-properties-common
sudo apt-get -y install \
    telnet nmap pigz sharutils screen strace tree pv atop lsof git zip unzip wget bc vim cowsay tmux busybox
# Install Python3.8 with apt
sudo apt-get -y install python3.8 python3-pip
# Install latest aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"
unzip /tmp/awscliv2.zip -d /tmp/awscli
sudo /tmp/awscli/aws/install
# base-provisioner.sh done
echo "base-provisioner.sh done"
# End

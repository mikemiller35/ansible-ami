#!/bin/bash

echo "ansible-provisioner.sh starting..."
# Install ansible with pip
python3.8 -m pip install --upgrade pip; python3.8 -m pip install ansible netaddr
# Set up our Python stuff in PATH
echo "Updating PATH variable"
echo "PATH=$PATH:/home/reachengine/.local/bin" >> /home/reachengine/.bashrc
# ansible-provisioner.sh done
echo "ansible-provisioner.sh done"
# End

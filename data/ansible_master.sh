#!/bin/bash
apt update -y
apt install -y python3 python3-pip ansible

# Create SSH key
su - ubuntu -c "ssh-keygen -t rsa -f /home/ubuntu/.ssh/id_rsa -q -N ''"

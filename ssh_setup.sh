#!/bin/bash
sudo apt install openssh-server
sudo dpkg-reconfigure openssh-server
sudo cp /etc/ssh/sshd_config ./backup/etc/ssh/sshd_config
sudo cp sshd_config /etc/ssh/sshd_config

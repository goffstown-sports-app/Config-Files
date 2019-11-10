#!/bin/sh
# Installing docker onto a RPI

# Install Docker:
sh get-docker.sh
curl -fsSL get.docker.com -o get-docker.sh

# Giving Docker Sudo Privildages:
sudo groupadd docker
sudo gpasswd -a $USER docker

# Rebooting the pi
echo "The pi will reboot in 5 seconds"
sudo reboot
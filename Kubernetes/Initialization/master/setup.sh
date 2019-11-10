#!/bin/bash
# This script will initalize the master node for a kubernetes cluster running on arm
# This script also requires sudo privilages

masterIP="IP GOES HERE"

# Initalization
sudo kubeadm init --pod-network-cidr 10.22.0.0/16 --apiserver-advertise-address=$masterIP
echo "%%%MAKE SURE TO COPY THE COMMAND SHOWN ABOVE%%%"
echo "All of the commands shown above will be ran by this script"
sleep 5
mkdir -p $HOME/.kube
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Enabling pod to pod comminication
{
    kubectl apply -f https://git.io/weave-kube-1.6
} || {
    kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
}

# Instructions
echo "

This pi has been successfully initalized as the master node
Make sure that you go and find the line in all the output above that says:
%%%MAKE SURE TO COPY THE COMMAND SHOWN ABOVE%%%

"

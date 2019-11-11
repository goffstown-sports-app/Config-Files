#!/bin/bash
# This script uses k3s instead of kubeadm to setup our master node

sudo su
curl -sfL https://get.k3s.io | sh -

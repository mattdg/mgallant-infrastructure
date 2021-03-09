#!/bin/bash

#
# First script to run after installing the microk8s cluster and joining the initial nodes.
#

microk8s enable dns ingress rbac storage 
microk8s enable portainer

echo Enabling MetalLB. Specify range as 192.168.1.240-192.168.1.249
microk8s enable metallb

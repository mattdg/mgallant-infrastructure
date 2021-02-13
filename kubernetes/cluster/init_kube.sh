#!/bin/bash
kubeadm init --pod-network-cidr=192.168.0.0/16 --control-plane-endpoint=cluster-endpoint | tee -a > cluster_init.log

mv -f $HOME/.kube $HOME/.kube.bak
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f calico.yaml


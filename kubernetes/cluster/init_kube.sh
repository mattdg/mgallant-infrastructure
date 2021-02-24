#!/bin/bash
kubeadm init --pod-network-cidr=192.168.0.0/16 --control-plane-endpoint=cluster-endpoint | tee -a > cluster_init.log

mv -f $HOME/.kube $HOME/.kube.bak
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Install Calico data store.
# curl https://docs.projectcalico.org/manifests/calico.yaml -O
kubectl apply -f calico.yaml

mkdir -p $HOME/bin
cd $HOME/bin
curl -O -L https://github.com/projectcalico/calicoctl/releases/download/v3.17.2/calicoctl
curl -o kubectl-calico -L https://github.com/projectcalico/calicoctl/releases/download/v3.17.2/calicoctl
chmod +x calicoctl
chmod +x kubectl-calico
cd -


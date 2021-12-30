#!/usr/bin/bash

cluster=$1

aws eks update-kubeconfig --name ${cluster}
kubectl version

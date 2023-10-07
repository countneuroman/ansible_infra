#!/bin/bash

cd control_node
docker build -t control-node:0.0.1 .
docker save --output control-node-0.0.1.tar control-node:0.0.1
sudo k3s ctr images import control-node-0.0.1.tar
sudo k3s kubectl apply -k .
rm ../control-node:0.0.1.tar

cd ..
cd managed_node_1
docker build -t managed-node1:0.0.1 .
docker save --output managed-node1-0.0.1.tar managed-node1:0.0.1
sudo k3s ctr images import managed-node1-0.0.1.tar
sudo k3s kubectl apply -k .
rm ../managed-node1:0.0.1.tar
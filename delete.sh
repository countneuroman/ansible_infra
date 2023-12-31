#!/bin/bash

sudo k3s kubectl delete deployment control-node
sudo k3s kubectl delete deployment managed-node1

sudo k3s ctr images delete docker.io/library/control-node:0.0.1 
sudo k3s ctr images delete docker.io/library/managed-node1:0.0.1 

docker rmi $(docker images -q "control-node")
docker rmi $(docker images -q "managed-node1")
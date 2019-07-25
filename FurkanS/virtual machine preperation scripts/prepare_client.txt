#!/bin/bash

#Ağ adaptörünün ismini değiştirmek için önce kapatıp sonra adını değiştirmek gerekiyor.
ip link set enp0s3 down

ip link set enp0s3 name cg0

ip link set cg0 up

#Daha sonra ipsini atıyoruz

ip addr add 10.1.0.2/24 dev cg0
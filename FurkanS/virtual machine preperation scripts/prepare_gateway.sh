#!/bin/bash

##Ağ adaptörlerinin isimlerinin değiştirilmesi


ip link set enp0s3 down

ip link set enp0s3 name gc0

ip link set gc0 up

ip link set enp0s8 down

ip link set enp0s8 name gr0

ip link set gr0 up

##Ağ adaptörlerinin ip atamaları

ip addr add 10.1.0.1/24 dev gc0

ip addr add 10.2.0.1/24 dev gr0
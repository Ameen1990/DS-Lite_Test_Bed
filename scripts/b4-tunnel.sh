#!/bin/bash

# Creating  the main DS-Lite tunnel
ip link add name ipip6 type ip6tnl local 2001:db8:0:1::2 remote 2001:db8:0:1::1 mode any dev ens39

# Making sure that the interface is up
ip link set dev ipip6 up

ip route add 198.51.100.0/24 dev ipip6


# Enable IP forwaring
echo 1 > /proc/sys/net/ipv4/ip_forward
echo 1 > /proc/sys/net/ipv6/conf/all/forwarding

# Flushing iptables rules
iptables -F
iptables -X

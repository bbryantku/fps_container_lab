#!/bin/bash
sudo ip route del 10.5.0.0/16
sudo ip route add 10.5.0.0/16 via 10.4.0.2
sudo ip route del 10.6.0.0/16
sudo ip route add 10.6.0.0/16 via 10.4.0.2

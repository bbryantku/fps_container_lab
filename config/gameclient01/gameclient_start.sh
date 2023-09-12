#!/bin/bash

#fix default route; don't use the docker default
ip route del default #removes docker default route
ip route add default via 10.5.0.2 #adds vyos router IP as default route

#switch to unprivileged account
su testuser 
cd /opt/gameclient
/opt/gameclient/bin/Headless_Client.x86_64

#start the indended service

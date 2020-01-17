#!/bin/sh
# Enable and start service to generate config
sysrc sabnzbd_enable="YES"
service sabnzbd start 
# Sleep is needed because iocage dont read line by line it reads all in post_install.sh
sleep 5
# Edit config to allow outside access
sed -i '' 's/127.0.0.1/0.0.0.0/g' /usr/local/sabnzbd/sabnzbd.ini
# Restart service for config change to take 
service sabnzbd restart



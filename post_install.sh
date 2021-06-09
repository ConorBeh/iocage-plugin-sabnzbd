#!/bin/sh
# Enable and start the service to generate the config file
sysrc sabnzbd_enable="YES"
service sabnzbd start
# Sleep is needed because iocage doesn’t read line by line but rather reads it in all at once
sleep 5
timeout 10 sh -c 'while [ ! -f /usr/local/sabnzbd/sabnzbd.ini ]; do sleep 1; done'
service sabnzbd stop
# Edit config to allow outside access
sed -i '' 's/127.0.0.1/0.0.0.0/g' /usr/local/sabnzbd/sabnzbd.ini
# Restart the service for config change to take
service sabnzbd start

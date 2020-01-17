#!/bin/sh
# Start/stop once to generate configs
service sabnzbd onestart 
sleep 10
service sabnzbd onestop
# Edit config to allow outside access
sed -i '' 's/127.0.0.1/0.0.0.0/g' /usr/local/sabnzbd/sabnzbd.ini
sleep 10
# Start and enable service
service sabnzbd onestart
sysrc sabnzbd_enable="YES"



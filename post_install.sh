#!/bin/sh
# Start/stop once to generate configs
sysrc sabnzbd_enable="YES"
service sabnzbd start 
# Edit config to allow outside access
sed -i '' 's/127.0.0.1/0.0.0.0/g' /usr/local/sabnzbd/sabnzbd.ini
# Start and enable service
service sabnzbd restart



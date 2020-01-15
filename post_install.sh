#!/bin/sh
# Enable service
sysrc sabnzbd_enable="YES"
#sed -i '' 's/127.0.0.1/0.0.0.0/g' /usr/local/sabnzbd/sabnzbd.ini
#service sabnzbd stop
service sabnzbd start


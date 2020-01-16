#!/bin/sh
# Enable service
sysrc sabnzbd_enable="YES"
service sabnzbd start
service sabnzbd stop
sed -i '' 's/127.0.0.1/0.0.0.0/g' /usr/local/sabnzbd/sabnzbd.ini
chmod +x /usr/local/sabnzbd/sabnzbd.ini
#service sabnzbd stop
service sabnzbd start


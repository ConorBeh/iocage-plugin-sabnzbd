#!/bin/sh
# Enable service
#sysrc sabnzbd_enable="YES"
#service sabnzbd start 2>/dev/null
#service sabnzbd stop 2>/dev/null
service sabnzbd onestart 2>/dev/null
sed -i '' 's/127.0.0.1/0.0.0.0/g' /usr/local/sabnzbd/sabnzbd.ini
#chmod +x /usr/local/sabnzbd/sabnzbd.ini
service sabnzbd onestop 2>/dev/null
sysrc sabnzbd_enable="YES"
service sabnzbd start 2>/dev/null


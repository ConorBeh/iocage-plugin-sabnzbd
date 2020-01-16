#!/bin/sh
# Enable service
#sysrc sabnzbd_enable="YES"
#service sabnzbd start 2>/dev/null
#service sabnzbd stop 2>/dev/null
service sabnzbd onestart 
#service sabnzbd stop 2>/dev/null
sleep 10
service sabnzbd onestop
sed -i '' 's/127.0.0.1/0.0.0.0/g' /usr/local/sabnzbd/sabnzbd.ini
sleep 10
#chmod +x /usr/local/sabnzbd/sabnzbd.ini
#service sabnzbd stop 2>/dev/null
service sabnzbd onestart
sysrc sabnzbd_enable="YES"
#service sabnzbd start 2>/dev/null


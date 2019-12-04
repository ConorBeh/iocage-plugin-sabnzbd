#!/bin/sh
# Enable service
sysrc -f /etc/rc.conf sabnzbd_enable="YES"

# Permissions stuffs
chown -R sabnzbd:sabnzbd /usr/local/share/sabnzbdplus
chmod 755 /usr/local/sabnzbd/

# Start service
service sabnzbd start

#!/bin/sh
# Enable service
sysrc -f /etc/rc.conf sabnzbd_enable="YES"

# Permissions stuffs
chown -R sabnzb:sabnzb /usr/local/share/sabnzbdplus
chmod 755 /usr/local/sabnzbd/

# Start service
service sabnzbd start

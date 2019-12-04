#!/bin/sh
# Enable service
sysrc -f /etc/rc.conf sabnzbd_enable="YES"

# Permissions stuffs
pw user add sab -c sab -u 8675309 -d /nonexistent -s /usr/bin/nologin"
pw groupadd -n sab -g 8675309"
pw groupmod sab -m _sabnzbd"
chown -R sab:sab /usr/local/share/sabnzbdplus
chmod 755 /usr/local/sabnzbd/

# Start service
service sabnzbd start

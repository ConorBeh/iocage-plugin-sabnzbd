#!/bin/sh
sysrc -f /etc/rc.conf sabnzbd_enable="YES"

chown -R sabnzbd:sabnzbd /usr/local/share/sabnzbdplus

chmod 755 /usr/local/sabnzbdplus

service sabnzbd start

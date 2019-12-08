#!/bin/sh
# Enable service
sysrc sabnzbd_enable="YES"
# echo "sabnzbd_conf_dir=/sabnzbd" >> /etc/rc.conf

# Permissions stuffs
#pw user add sab -c sab -u 8675309 -d /nonexistent -s /usr/bin/nologin
#pw groupadd -n sab -g 8675309
#pw groupmod sab -m _sabnzbd



ln -s /usr/local/bin/python2.7 /usr/bin/python
ln -s /usr/local/bin/python2.7 /usr/bin/python2
pw groupadd -n media -g 8675309
pw user add media -c media -u 8675309 -d /nonexistent -s /usr/bin/nologin
chown -R media:media /var/run/sabnzbd


# Start service

service sabnzbd start

sed -i '' 's/127.0.0.1/0.0.0.0/' /usr/local/sabnzbd/sabnzbd.ini
#chmod 777 /usr/local/sabnzbd/sabnzbd.ini
# More perms, needs to be done after service start
#chown -R _sabnzbd:_sabnzbd /usr/local/sabnzbd/
# chmod -R 755 /usr/local/sabnzbd/

#sleep 10
#service sabnzbd start

service sabnzbd stop
service sabnzbd start


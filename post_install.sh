#!/bin/sh
# Enable service
sysrc sabnzbd_enable="YES"
#sysrc sabnzbd_user=sabg
# echo "sabnzbd_conf_dir=/sabnzbd" >> /etc/rc.conf

# Permissions stuffs
#pw user add sab -c sab -u 8675309 -d /nonexistent -s /usr/bin/nologin
#pw groupadd -n sab -g 8675309
#pw groupmod sab -m _sabnzbd



#ln -s /usr/local/bin/python2.7 /usr/bin/python
#ln -s /usr/local/bin/python2.7 /usr/bin/python2


# Start service


#pw user add sabg -c sabg -u 8675309 -d /nonexistent -s /usr/bin/nologin
#pw groupadd -n sabg -g 8675309
#pw groupmod sabg -m _sabnzbd
#chown -R sabg:sabg /usr/local/share/sabnzbdplus
service sabnzbd start
# More perms, needs to be done after service start
#chown -R _sabnzbd:_sabnzbd /usr/local/sabnzbd/
#chmod -R 755 /usr/local/sabnzbd/
#pw groupadd -n media -g 8675309
#pw user add media -c media -u 8675309 -d /nonexistent -s /usr/bin/nologin
#chown -R _sabnzbd:_sabnzbd /var/run/sabnzbd
#chown -R _sabnzbd:_sabnzbd /usr/local/sabnzbd
#sleep 10
#service sabnzbd start
sed -i '' 's/127.0.0.1/0.0.0.0/g' /usr/local/sabnzbd/sabnzbd.ini

service sabnzbd stop
service sabnzbd start


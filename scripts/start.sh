#!/bin/bash
#start nginx
#!/bin/bash
/usr/sbin/nginx
/usr/sbin/cron


file="/etc/openvpn/tcp443.conf"
if [ -f "$file" ]
then
        echo "$file found."
rm /tmp/*
cd /etc/openvpn/
service openvpn start
#/usr/sbin/openvpn tcp443.conf

else
        echo "$file not found."
/tmp/scripts/openvpn.sh
/tmp/scripts/installer.sh
service openvpn restart

fi

tail -F /var/log/openvpn.log

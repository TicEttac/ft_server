#!/usr/bin/sh
	if [ $AUTOINDEX = "off" ]
	then
		mv /root/conf/serve.com /etc/nginx/sites-enabled/;
	else
		mv /root/conf/serv_index.com /etc/nginx/sites-enabled/;
		rm -f /var/www/html/index.nginx-debian.html;
	fi

service php7.3-fpm start;
service mysql start;
service nginx start;
/bin/bash

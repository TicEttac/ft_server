#!/bin/sh

GREEN=\\e[32m
CYAN=\\e[36m
RED=\\e[31m
_ENDL=\\e[0m
PHPG="phpMyAdmin-5.0.2-all-languages.zip"
WPG="latest.tar.gz"

	apt-get update -y;
	apt-get upgrade -y;
	apt-get install -y nginx mariadb-server;
	apt-get install -y php-mbstring php-zip php-gd php-xml php-fpm php-mysql;
	apt-get install -y php-pear php-gettext php-cgi;
	apt-get install -y git yarn unzip wget tar;
	unzip root/conf/$PHPG;
	mv phpMyAdmin-5.0.2-all-languages phpmyadmin;
	mv phpmyadmin /var/www/html/phpmyadmin;
	mv ~/conf/config.inc.php /var/www/html/phpmyadmin;
	rm /var/www/html/phpmyadmin/config.sample.inc.php
	chmod 660 /var/www/html/phpmyadmin/config.inc.php;
	chown -R www-data:www-data /var/www/html/phpmyadmin;
	rm /etc/nginx/sites-enabled/default;
	if [$AUTOINDEX == off]
	then
		mv /root/conf/serve.com /etc/nginx/sites-enabled/;
	else
		mv /root/conf/serv_index.com /etc/nginx/sites-enabled/;
		rm -f /var/www/html/index.nginx-debian.html;
	fi
	mv ~/conf/my.cnf /etc/mysql/;
	wget https://wordpress.org/$WPG;
	tar -xf $WPG;
	mv /wordpress/ /var/www/html/;
	rm -f /root/conf/$PHPG $WPG;
	mv /root/conf/wp-config.php /var/www/html/wordpress/;
	mkdir -p /var/run/mysqld;
	chown mysql /var/run/mysqld;
	service php7.3-fpm start;
	service mysql start;
	mysql --user=root -e "source /root/conf/setup.sql";

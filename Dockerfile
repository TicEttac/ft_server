# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nisauvig <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/19 23:20:41 by nisauvig          #+#    #+#              #
#    Updated: 2020/07/19 19:56:08 by nisauvig         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# escape='

FROM debian:buster
COPY	srcs/conf /root/conf

RUN	apt-get update																					\
	&& apt-get install -y nginx mariadb-server														\
	&& apt-get install -y php-mbstring php-zip php-gd php-xml php-fpm php-mysql						\
	&& apt-get install -y php-pear php-gettext php-cgi												\
	&& apt-get install -y git yarn unzip															\
	&& unzip root/conf/phpMyAdmin-5.0.2-all-languages.zip											\
	&& mv phpMyAdmin-5.0.2-all-languages phpmyadmin													\
	&& mv phpmyadmin /var/www/html/phpmyadmin														\
	&& mv ~/conf/config.inc.php /var/www/html/phpmyadmin											\
	&& rm /var/www/html/phpmyadmin/config.sample.inc.php											\
	&& chmod 660 /var/www/html/phpmyadmin/config.inc.php											\
	&& chown -R www-data:www-data /var/www/html/phpmyadmin											\
	&& rm /etc/nginx/sites-enabled/default															\
	&& mv ~/conf/serve.com /etc/nginx/sites-enabled/												\
	&& mv ~/conf/my.cnf /etc/mysql/																	\
	&& mkdir -p /var/run/mysqld																		\
	&& chown mysql /var/run/mysqld																	\
	&& service mysql restart																		\
	&& service nginx restart																		\
	&& mariadb																						\

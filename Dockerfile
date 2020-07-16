# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nisauvig <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/19 23:20:41 by nisauvig          #+#    #+#              #
#    Updated: 2020/07/16 18:45:01 by nisauvig         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# escape='

FROM debian:buster
COPY	srcs/conf /root/conf

RUN	apt-get update															\
	&& apt-get install -y nginx mariadb-server php-fpm php-mysql			\
	&& apt-get install -y wget git composer yarn							\
	&& wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.zip	\
	&& unzip phpMyAdmin-5.0.2-all-languages.zip								\
	&& mv phpMyAdmin-5.0.2-all-languages phpmyadmin							\
	&& mv phpmyadmin /usr/share/phpmyadmin									\
	&& ln -s /usr/share/phpmyadmin /var/www/html							\
	&& rm /etc/nginx/sites-enabled/default									\
	&& mv ~/conf/serve.com /etc/nginx/sites-enabled/						\
	&& mv ~/conf/my.cnf /etc/mysql/											\
	&& mkdir -p /var/run/mysqld												\
	&& chown mysql /var/run/mysqld											\
	&& service mysql restart												\
	&& service nginx restart												\
	&& mariadb																\

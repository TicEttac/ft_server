# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nisauvig <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/19 23:20:41 by nisauvig          #+#    #+#              #
#    Updated: 2020/07/13 04:54:36 by nisauvig         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# escape='

FROM debian:buster
COPY	srcs /root/srcs

RUN	apt-get update													\
	&& apt-get install -y nginx mariadb-server php-fpm php-mysql	\
	&& rm /etc/nginx/sites-enabled/default							\
	&& mv ~/srcs/serve.com /etc/nginx/sites-enabled/				\
	&& mv ~/srcs/my.cnf /etc/mysql/									\
	&& mkdir -p /var/run/mysqld										\
	&& chown mysql /var/run/mysqld									\
	&& service mysql restart										\
	&& service nginx restart											\
	&& mariadb														\

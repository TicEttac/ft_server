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
COPY	srcs/setup.sh	/

RUN	sh setup.sh

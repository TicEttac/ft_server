# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    docker_start.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nisauvig <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/21 18:50:38 by nisauvig          #+#    #+#              #
#    Updated: 2020/07/14 09:38:50 by nisauvig         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=ft_server
GREEN=\\033[32m
CYAN=\\033[36m
RED=\\033[31m
_ENDL=\\033[0m

docker build -t $NAME .
if [ `echo $?` != 1 ]
then
	echo "$GREEN Docker image $NAME successfully built$_ENDL"
	echo "$CYAN Launching $NAME image...$_ENDL"
	echo "$CYAN Launching nginx on $NAME$_ENDL"
	docker run -it -p 80:80 -p 443:443 $NAME
else
	echo "$RED Failed to build docker image\n$_ENDL"
fi

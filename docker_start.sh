# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    docker_start.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nisauvig <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/21 18:50:38 by nisauvig          #+#    #+#              #
#    Updated: 2020/02/21 19:45:14 by nisauvig         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=ft_server
GREEN=\\033[32m
_ENDL=\\033[0m
CYAN=\\033[36m

docker build -t $NAME:$NAME . > /dev/null
echo "$GREEN Docker image $NAME successfully built$_ENDL"
echo "$CYAN Launching $NAME image...$_ENDL"
echo "$CYAN Launching nginx on $NAME$_ENDL"
docker run -it -p 80:80 -p 443:443 $NAME
docker rm $NAME

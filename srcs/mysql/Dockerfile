# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/20 14:09:34 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/25 19:44:58 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:latest

RUN		apk update ; \
		apk upgrade ; \
		apk add openrc mariadb mysql-client

WORKDIR	/etc/setup/

COPY	./setup_mysql.sh ./
COPY	./configs/mysql_config ./
COPY	./configs/wordpress_database.sql ./
COPY	./configs/my.cnf ./

EXPOSE	3306

ENTRYPOINT ["sh", "setup_mysql.sh"]

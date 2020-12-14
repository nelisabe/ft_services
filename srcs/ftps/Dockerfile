# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/14 15:12:24 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/14 18:57:39 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:latest

RUN		apk update ; \
		apk upgrade ; \
		apk add vsftpd ; \
		apk add openssl

COPY	./vsftpd.conf /etc/vsftpd/

RUN		mkdir -p /home/ftp_root ; \
		echo -e "root\nroot" | adduser ftp_root -h /home/ftp_root;\
		chown ftp_root:ftp_root /home/ftp_root

RUN		mkdir -p /etc/vsftpd/ssl ;\
		openssl req -newkey rsa:2048 \
			-x509 \
			-sha256 \
			-days 365 \
			-nodes \
			-out /etc/vsftpd/ssl/ftp_serv_key.crt \
			-keyout /etc/vsftpd/ssl/ftp_serv_key.key \
			-subj "/C=RU/ST=Moscow/L=Moscow/O=school21/OU=Student/"

EXPOSE	20 21 10000

WORKDIR	/etc/start
COPY	./start_ftp.sh ./

ENTRYPOINT ["sh"]
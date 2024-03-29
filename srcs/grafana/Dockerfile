# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/29 11:40:56 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/30 14:38:10 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:latest

RUN		apk update ; \
		apk upgrade ; \
		apk --no-cache add ca-certificates wget ; \
		wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub ; \
		wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-2.28-r0.apk ; \
		apk	add glibc-2.28-r0.apk

WORKDIR /etc/

COPY	./configs/grafana-7.3.6.tar.gz ./
RUN		tar -xzvf grafana-7.3.6.tar.gz

RUN		mkdir -p ./grafana/dashboards/
COPY	./configs/grafana_configs/dashboards.yaml ./grafana/conf/provisioning/dashboards/
COPY	./configs/grafana_configs/datasources.yaml ./grafana/conf/provisioning/datasources/
COPY	./configs/grafana_configs/*.json ./grafana/dashboards/

EXPOSE	3000

ENTRYPOINT ["/etc/grafana/bin/grafana-server", "--homepath", "/etc/grafana/"]

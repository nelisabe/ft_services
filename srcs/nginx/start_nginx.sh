# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start_nginx.sh                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nelisabe <nelisabe@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/17 13:47:48 by nelisabe          #+#    #+#              #
#    Updated: 2020/12/17 18:29:19 by nelisabe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ssh-keygen -A

supervisord -c supervisord.conf

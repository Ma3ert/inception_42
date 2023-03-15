# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    mariaDBScript.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: Ma3ert <yait-iaz@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/12 08:57:12 by Ma3ert            #+#    #+#              #
#    Updated: 2023/03/14 07:00:23 by Ma3ert           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh

# update the apt-get 
	apt-get update -y \
# install mariadb-server
	&& apt-get -y install mariadb-server \
# start mysql (mariadb)
	&& service mysql start \
# create database
	&& mysql -e "CREATE DATABASE wordpress" \
# give the user the priv on the database created and set a pass for the user
	&& mysql -e "GRANT ALL ON wordpress.* TO 'user'@'localhost' IDENTIFIED BY 'user2010'" \
# set a password for the root
	&& mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'root2010'"
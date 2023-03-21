#!/bin/sh

# start mysql (mariadb)
	service mysql start
# create database
	mysql -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;"
# give the user the privlege on the database created and set a password for the user
	mysql -e "CREATE USER IF NOT EXISTS '$DATABASE_USER'@'%' IDENTIFIED BY '$USER_PASSWORD';"
	mysql -e "GRANT ALL ON $DATABASE_NAME.* TO '$DATABASE_USER'@'%'"
# Apply changes
	mysql -e "FLUSH PRIVILEGES;"
# set a password for the root
	mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$ROOT_PASSWORD';"
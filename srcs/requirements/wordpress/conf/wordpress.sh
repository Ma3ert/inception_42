#!/bin/sh

# Using curl to get wp-cli
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar

# Move the file
mv wp-cli.phar /usr/local/bin/wp

# Start php7.3-fpm 
service php7.3-fpm start

# Download wordpress & create wordpress config file
wp core download --allow-root && cat wp-config-sample.php > wp-config.php && chmod +x wp-config.php

# Set database name
echo "set db name"
wp config set DB_NAME $DATABASE_NAME --allow-root

# Set database username
echo "set db user"
wp config set DB_USER $DATABASE_USER --allow-root

# Set passoword for database username
echo "set db password"
wp config set DB_PASSWORD $USER_PASSWORD --allow-root

# Set database hostname
echo "set db hostname"
wp config set DB_HOST $DATABASE_HOST --allow-root

# Install wordpress
wp core install --title=$TITLE --url=$URL --admin_name=$ADMIN_USERNAME --admin_password=$ADMIN_PASSWORD --admin_email=$EMAIL --allow-root

exec "$@"
FROM debian:buster

COPY ./conf/wordpress.sh /bin/wordpress.sh

# Update apt-get
RUN apt-get update

# Install curl & php-fpm
RUN apt-get install -y curl php7.3-fpm php php-curl php-mysql && chmod +x /bin/wordpress.sh

WORKDIR /var/www/wordpress

ENTRYPOINT [ "/bin/wordpress.sh" ]

CMD [ "php-fpm7.3", "-F" ]
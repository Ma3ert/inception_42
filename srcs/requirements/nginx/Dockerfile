FROM debian:buster

EXPOSE 443

COPY ./conf/todo.sh ./conf/todo.sh

RUN bash ./conf/todo.sh

COPY ./conf/default /etc/nginx/conf.d/nginx.conf

COPY ./conf/index.html /var/www/wordpress/

CMD [ "nginx", "-g", "daemon off;" ]

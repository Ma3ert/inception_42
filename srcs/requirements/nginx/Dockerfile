FROM debian:latest

EXPOSE 80

COPY ./conf/todo.sh ./conf/todo.sh

RUN bash ./conf/todo.sh

COPY ./conf/default /etc/nginx/sites-available/default

CMD [ "nginx", "-g", "daemon off;" ]

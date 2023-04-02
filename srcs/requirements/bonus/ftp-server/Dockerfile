FROM debian:buster

COPY ./conf/ftp-server.sh /bin/ftp-server.sh

RUN apt-get update && apt-get install -y vsftpd && chmod +x /bin/ftp-server.sh 

ENTRYPOINT [ "/bin/ftp-server.sh" ]
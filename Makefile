NGINX_DOCKERFILE = ./srcs/requirements/nginx/Dockerfile
MARIADB_DOCKERFILE = ./srcs/requirements/mariaDB/Dockerfile
WORDPRESS_DOCKERFILE = ./srcs/requirements/wordpress/Dockerfile

NGINX = nginx
MARIADB = mariaDB
WORDPRESS = wordpress

all: hoho

hoho: build directory
	docker-compose up

directory:
	mkdir /home/login/data/database && mkdir /home/login/data/wordpress

clean:
	dclean && iclean
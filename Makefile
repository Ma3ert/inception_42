NGINX_DOCKERFILE = ./srcs/requirements/nginx/Dockerfile
MARIADB_DOCKERFILE = ./srcs/requirements/mariaDB/Dockerfile
WORDPRESS_DOCKERFILE = ./srcs/requirements/wordpress/Dockerfile

NGINX = nginx
MARIADB = mariaDB
WORDPRESS = wordpress

all: hoho

hoho: directory
	docker-compose -f ./srcs/docker-compose.yml up

directory:
	mkdir -p /home/yait-iaz/data/wordpress
	mkdir -p /home/yait-iaz/data/database
clean:
	docker system prune -f

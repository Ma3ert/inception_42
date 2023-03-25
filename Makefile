NGINX_DOCKERFILE = ./srcs/requirements/nginx/Dockerfile
MARIADB_DOCKERFILE = ./srcs/requirements/mariaDB/Dockerfile
WORDPRESS_DOCKERFILE = ./srcs/requirements/wordpress/Dockerfile

NGINX = nginx
MARIADB = mariaDB
WORDPRESS = wordpress

all: hoho

hoho: directory
	docker-compose -f ./srcs/docker-compose.yml up --build

directory:
	sudo mkdir -p /home/yait-iaz/data/wordpress
	sudo mkdir -p /home/yait-iaz/data/database
down:
	docker-compose -f ./srcs/docker-compose.yml down

clean:
	docker system prune --all --force --volumes
	docker network prune --force
	docker volume prune --force
	docker volume rm $$(docker volume ls -q)
	sudo rm -rf /home/yait-iaz/data/*
#!/bin/sh

# update the apt-get & install nginx
apt-get update -y && apt-get -y install nginx
exec "$@"

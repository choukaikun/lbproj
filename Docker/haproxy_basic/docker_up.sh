#!/usr/bin/env bash

DIR=~/lbproj/Docker/haproxy_basic

docker run -d -v ${DIR}/web1/nginx.conf:/etc/nginx/nginx.conf -v ${DIR}/web1/html:/usr/share/nginx/html --net my_network --name web1 nginx
docker run -d -v ${DIR}/web2/nginx.conf:/etc/nginx/nginx.conf -v ${DIR}/web2/html:/usr/share/nginx/html --net my_network --name web2 nginx
docker run -d -v ${DIR}/haproxy.cfg://usr/local/etc/haproxy/haproxy.cfg -p 80:80 --net my_network --name lbl haproxy

#! /usr/bin/bash

# stop containers
DIR=$(dirname $BASH_SOURCE)
source "$DIR/stop.sh"

# delete containers
docker rm karma-app-microservices-gateway-backend-1
docker rm karma-app-microservices-gateway-redis-1
docker rm karma-app-microservices-posts-backend-1
docker rm karma-app-microservices-posts-mongo-1
docker rm karma-app-microservices-users-backend-1
docker rm karma-app-microservices-users-mongo-1

# delete networks
docker network rm karma-app-posts-net
docker network rm karma-app-users-net
docker network rm karma-app-gateway-net
docker network rm karma-app-net

# delete volumes
docker volume rm karma-app-microservices_gateway-redis-data
docker volume rm karma-app-microservices_posts-db-config
docker volume rm karma-app-microservices_posts-db-data
docker volume rm karma-app-microservices_users-db-config
docker volume rm karma-app-microservices_users-db-data

#! /usr/bin/bash

docker exec -it karma-app-microservices-posts-mongo-1 mongosh --eval "rs.initiate()"

#! /usr/bin/bash

docker compose up &

sleep 5s # estimated time of containers starting up

DIR=$(dirname $BASH_SOURCE)
source "$DIR/posts_mongo_rs_initiate.sh" # initiate replica set

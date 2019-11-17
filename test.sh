#!/bin/bash

# remove the container if exists or running 
if [ $(docker container ls -q --filter name=my_db_container) != '' ]; then
    docker container stop my_db_container
    docker container rm my_db_container
fi

# remove the image if exists
if [ $(docker image ls -q --filter reference=my_db) != '' ]; then
    docker image rm my_db
fi

# build the image
docker build -t my_db .

# start the container
docker run -itd -p 3007:3306 --name my_db_container my_db

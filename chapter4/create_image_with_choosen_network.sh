# use this command to create container with network host e.g nginx as reverse proxy can be used here 
docker run -i -t --net=host centos/bash

docker run -i -t --net=bridge centos /bin/bash

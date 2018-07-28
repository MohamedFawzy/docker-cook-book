# Requirements :
- Docker machine
- Virtual box
- Docker swarm

# Setting up cluster with docker swarm
- set up the docker host using docker machine and virtual machine
```
docker-machine create -d virtualbox local
docker-machine create -d virtualbox local1
docker-machine create -d virtualbox local2
```

- verifiy your machines with command `docker-machine ls` you should see three
  machines ended with 10x and names localx

- create cluster manager for machine local with the following command `docker-machine ssh local "docker swarm init --advertise-addr 192.168.99.100`



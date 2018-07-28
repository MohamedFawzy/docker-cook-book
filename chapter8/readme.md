# Requirements :
- Docker machine
- Virtual box
- Docker swarm

# Setting up cluster with docker swarm
- set up the docker host using docker machine and virtual machine
```
docker-machine create -d virtualbox vm1
docker-machine create -d virtualbox vm2
```

- verifiy your machines with command `docker-machine ls` you should see two
  machines ended with 10x and names vmx

- create cluster manager for machine vm  with the following command `docker-machine ssh vm1  "docker swarm init --advertise-addr 192.168.99.100`  
you should see something like this ![alt text](https://github.com/MohamedFawzy/docker-cook-book/blob/master/imgs/1.png)

- join cluster with the following command `docker-machine ssh vm2 "docker
  swarm join --token
  <token>
  192.168.99.100:2377"`

- confirm docker cluster with the following command `docker-machine ssh vm1
  "docker node ls"`

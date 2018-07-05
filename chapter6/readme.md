#### Api client for python-docker

###### OS : Fedora

```
sudo yum install python-docker-py
```

`
sudo pip install docker-py
`

##### Connect through unix socket

```
client = docker.Client(base_url='unix://var/run/docker.sock',version='1.18',  timeout=10)
```

#### Connect over http

```
client = docker.Client(base_url='http://dockerhost.example.com:2375', version='1.18',  timeout=10)
```
#### Search for image fedora

```
client.search("fedora")
```

##### Pull image fedora

```
client.pull("fedora", tag="latest")
```

###### start container

```
client.create_container("fedora", command="ls",
       hostname=None, user=None, detach=False, stdin_open=False,
       tty=False, mem_limit=0, ports=None, environment=None,
       dns=None, volumes=None,
       volumes_from=None,network_disabled=False, name=None,
       entrypoint=None, cpu_shares=None,
       working_dir=None,memswap_limit=0)

 ```

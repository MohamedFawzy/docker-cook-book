docker run -d -i -t --name centos_server centos /bin/bash
docker run -i -t --link centos_server:server --name client fedora /bin/bash

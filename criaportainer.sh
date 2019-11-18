#/bin/bash
docker service create --name portainer -p 9000:9000 --constraint 'node.role == manager' --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock portainer/portainer --no-auth -H unix:///var/run/docker.sock 


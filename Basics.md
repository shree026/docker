## Docker Basic Command

### To start docker service

```
$$ systemctl start docker
```

### To enable docker service

```
$$ systemctl enable docker

```

### To stop docker servie 

```
$$ systemctl stop docker

```

### To search image from docker hub

```
$$ docker search alpine      // image name 

```

### To Pull Image from Docker hub

```
$$ docker pull alpine

```

### To see the list of Images

```
$$ docker images 

```

### To see the history of any image 

```
$$ docker history ubuntu

```

### To check docker version

```
$$ docker version

```

### To check docker service status

```
$$ systemctl status docker 

```

### To create a Container

```
$$ docker run alpine sh 
              
             //image //command
         
```

### To create Container with Specific name

```
$$ docker run --name con alpine sh

```

### To create container with interective terminal 

```
$$ docker run -it --name con alpine sh

```

### To Start a Container

```
$$ docker start con // container_name

```

### To Stop a Container

```
$$ docker stop con

```

### To Kill a Container

```
$$ docker kill con

```

### If we want to exit a container in running state

```
$$ docker exec -it con sh   // container shouldd be in the running state already 

```

### If we want to stop the container after exiting it 

```
$$ docker attach con 

```

### To check the list of running containers 

```
$$ docker ps 
CONTAINER ID        IMAGE                   COMMAND                  CREATED             STATUS                          PORTS                              NAMES
1cadc5eef5be        registry                "/entrypoint.sh /etc…"   3 months ago        Restarting (1) 40 seconds ago                                      registry
b7ac0d5f02e5        nginx:v3                "nginx -g 'daemon of…"   4 months ago        Up 4 hours                      0.0.0.0:2222->80/tcp               web

```

### To check the list of all containers

```
$$ docker ps -a
CONTAINER ID        IMAGE                   COMMAND                  CREATED              STATUS                         PORTS                              NAMES
aa19db2506e0        portainer/portainer     "/portainer"             6 weeks ago          Up 12 seconds                  0.0.0.0:9000->9000/tcp             os
de96a67ba3a3        fedora                  "bash"                   6 weeks ago          Exited (0) 6 weeks ago                                            os1
1cadc5eef5be        registry                "/entrypoint.sh /etc…"   3 months ago         Restarting (1) 7 seconds ago                                      registry
61a4e25a44c0        hello-world             "/hello"                 3 months ago         Exited (0) 3 months ago                                           optimistic_germain

```

### To check the Status of running Container

```
$$ docker stats con 

```


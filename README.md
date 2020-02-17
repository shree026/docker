# Docker

Docker is a platform for developing, shipping, and running applications .
It is written in Go language.

### Versions of Docker

--> Docker-io <br>
--> Docker-ce <br>
--> Docker-ee <br>


## Installation in Docker-ce in Ubuntu

#### Step 1 : Update existing list of packages

```
sudo apt update

```
#### Step 2 : Install a few prerequisite packages which let apt use packages over HTTPS

```
sudo apt install apt-transport-https ca-certificates curl software-properties-common

```

#### Step 3 : Add the GPG key for the official Docker repository to your system

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

```

#### Step 4 : Add the Docker repository to APT sources

```
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

```

#### Step 5 : Update the package database with the Docker packages from the newly added repo

```
sudo apt update

```

#### Step 6 : Install Docker

```
sudo apt install docker-ce

```

### To start and enable docker service

```
systemctl enable docker --now 

```

### To check status

```
systemctl status docker

```

### To stop docker service 

```
systemctl stop docker 

```





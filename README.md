# DOCKER NETWORKING

<ul>
  
  <li> It provides connection between containers and services.</li>
  <li> Default Bridge is known as Docker0</li>
  
</ul>  

### List of Networks

```

force@Awakens:~$ docker network ls
NETWORK ID          NAME                DRIVER              SCOPE
d9e56ca65078        bridge              bridge              local
f6df9d606def        host                host                local
1f47ae03f7a8        none                null                local

```

## Network drivers
<ul>
  <li>Bridge</li>
  <li>Host</li>
  <li>Macvlan</li>
  <li>Overlay</li>
  <li>Null</li>
</ul>

## Bridge Network

Bridge network uses a software bridge which allows containers connected to the same bridge network to communicate, while providing isolation from containers which are not connected to that bridge network.
[Learn More About Bridge Network](https://docs.docker.com/network/bridge/)


### To create a bridge driver network

```
force@Awakens:~$ docker network create my-net
656a07c61760102af42168c1802825f35a8aaf7fc8f63e34d26f0aa0e4df6730

```

### To inspect this network

```
force@Awakens:~$ docker inspect my-net
[
    {
        "Name": "my-net",
        "Id": "656a07c61760102af42168c1802825f35a8aaf7fc8f63e34d26f0aa0e4df6730",
        "Created": "2020-03-04T16:47:24.549013909+05:30",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": {},
            "Config": [
                {
                    "Subnet": "172.19.0.0/16",
                    "Gateway": "172.19.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {},
        "Options": {},
        "Labels": {}
    }
]


```

### Create a network with ip-range

```

force@Awakens:~$ docker network create --ip-range 192.168.10.0/24 --subnet 192.168.10.0/16 network
afac9db9fa60d558d1b215067b7c60ce2ff8019af141e807f8855fb96b732102


```

### Create container with different network 

```

force@Awakens:~$ docker run -itd --name net --restart always --network network alpine sh 
4845901632b61618ad80a55da1584088b2f3452efe9f84d91945c491e352e632

```

## Overlay Network

It operates across an entire Swarm or UCP cluster rather than individual hosts.


### To create overlay network 

```
force@Awakens:~$ docker network create --driver overlay  --ip-range 168.193.1.0/24 --subnet 168.193.1.0/16 overlaynet
62c91839183aa398815bf32927a4c9b9e142ca3287ef1daa768e718d0129d127

```

## Macvlan Network 

It connects container interfaces directly to host interfaces.

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
  <li>Null<li>
</ul>

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


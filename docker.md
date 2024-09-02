---
title: "Docker"
description: "Containerize appliations for consistent behavior"
isPublic: true
---

[Docker](https://www.docker.com/) is a developer tool to containerize
applications.

## Common commands
### Look at currently running containers
```docker
docker ps
```

### Look at built images
```docker
docker image ls
```

### Look inside current running container
```docker
docker exec -it {container-id} sh 
```

* `container-id` can be found using `docker ps`.
* The `-i` flag stands for 'interactive' and allows for mouse input
* The `-t` flag stands for 'terminal' and allows for terminal in-/output

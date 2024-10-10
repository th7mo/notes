---
title: "Docker"
description: "Containerize appliations for consistent behavior"
isPublic: true
---

[Docker](https://www.docker.com/) is a developer tool to containerize
applications.

## Common commands

Look at currently running containers:

```sh
docker ps
```

Look at built images:

```sh
docker image ls
```
Build an image:

```sh
docker build -t {container-name} .
```

* If the `Dockerfile` is not named `Dockerfile` a custom name can
  be specified using the `-f` or `--file` flag.

Run image:

```sh
docker run -p 8080:80 {container-name}
```

* The `-p` or `--port` flag tells Docker to forward public port `8080` to the
  internal port `80`.
* Optionally a `-d` (detached) flag can be added to let Docker run
  the container detached.

Look inside current running container:

```sh
docker exec -it {container-id} sh 
```

* `{container-id}` can be found using `docker ps`.
* The `-i` flag stands for 'interactive' and allows for mouse input
* The `-t` flag stands for 'terminal' and allows for terminal in-/output

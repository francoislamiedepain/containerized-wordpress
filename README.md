# containerized-wordpress

## Clone repository

Clone repo using https:

```bash
git clone https://github.com/francoislamiedepain/containerized-wordpress.git
```

Clone repo using ssh:

```bash
git clone git@github.com:francoislamiedepain/containerized-wordpress.git
```

## Prerequisite

### Install Docker

- On Windows: https://docs.docker.com/docker-for-windows/install/

- On Mac: https://docs.docker.com/docker-for-mac/install/

- On Ubuntu: https://docs.docker.com/engine/install/ubuntu/ 

### Install Docker Compose

Please follow official documentation: https://docs.docker.com/compose/install/#install-compose

## Instructions

- Change into cloned repository :

```bash
cd containerized-wordpress/
```

### Build the project

Run docker-compose up in detached mode, it will pull the needed Docker images, and starts the wordpress/database containers.

```bash
 docker-compose up -d
```

You should now have 2 containers running on your machine:

```bash
francoishamy@fha containerized-wordpress (main) $ docker ps
CONTAINER ID   IMAGE             COMMAND                  CREATED          STATUS          PORTS                  NAMES
e58386435152   wordpress:5.7.2   "docker-entrypoint.s…"   53 minutes ago   Up 53 minutes   0.0.0.0:8000->80/tcp   containerized-wordpress_wordpress_1
df1123c8daa0   mysql:8.0         "docker-entrypoint.s…"   53 minutes ago   Up 53 minutes   3306/tcp, 33060/tcp    containerized-wordpress_db_1
```

In your browser, check wordpress running using 0.0.0.0:8000 (or 443 depends on your configuration).

#### Note

WordPress  works only on ports 80 and/or 44. If you encounter about binding your IP adress to port, please check listening port on your machine.

```bash
francoishamy@fha containerized-wordpress (main) $ lsof -i -P -n
```

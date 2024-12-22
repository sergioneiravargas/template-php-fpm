# PHP-FPM template
This template is a Docker environment that comes with PHP-FPM 8.4, Nginx and MariaDB.

Custom configuration for PHP and Nginx should be set in the files from **docker/php/** and **docker/nginx/** directories.

## **Configuration**
Creating **docker/.env** and **docker/docker-compose.local.yaml** files is required for the **Makefile** commands to work. The **.example** files can be used as defaults if your environment doesn't require a custom config.

## **Start containers** 
**Docker Compose** is **required**.

Run the following Make command from the root directory (requires GNU Make):
```
make up
```
In case you prefer not to use the given **Makefile** command, you can always overwrite/execute your own docker/docker-compose commands.

## **Stop containers**
**Docker Compose** is **required**.

Run the following Make command from the root directory (requires GNU Make):
```
make down
```
In case you prefer not to use the given **Makefile** command, you can always overwrite/execute your own docker/docker-compose commands.

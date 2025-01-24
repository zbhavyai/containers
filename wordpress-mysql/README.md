# Wordpress with MySQL

WordPress is a popular content management system.

## Launching

To start the WordPress and MySQL containers, run:

```shell
docker compose up --detach
```

## Accessing

Once the container is running, WordPress is available at [http://localhost:80](http://localhost:80). Then, you can proceed with the WordPress setup using the web interface.

## Teardown

To stop and remove the containers, run

```shell
docker compose down --volumes
```

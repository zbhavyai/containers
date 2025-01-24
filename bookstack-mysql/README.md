# BookStack with MySQL

BookStack is a simple, self-hosted, easy-to-use platform for organizing and storing information.

## Launching

To start the BookStack and MySQL containers, run

```shell
docker compose up --detach
```

## Accessing

Once the containers are running, you can access BookStack at [http://localhost:6875](http://localhost:6875), using

- Username: `admin@admin.com`
- Password: `password`

## Teardown

To stop and remove the containers, run

```shell
docker compose down --volumes
```

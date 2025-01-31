# PostgreSQL

PostgreSQL is open-source relational database.

## Launching

To start the Postgres container, run

```shell
docker compose up --detach
```

## Accessing

Once the container is running, you can access the database using the `psql` command-line tool.

```shell
PGPASSWORD=postgres psql -h localhost -U postgres -d mydatabase
```

## Teardown

To stop and remove the containers, run

```shell
docker compose down --volumes
```

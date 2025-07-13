# PostgreSQL

PostgreSQL is open-source relational database. This PostgreSQL container uses custom [`pg_hba.conf`](./pg_hba.conf) and [`postgresql.conf`](./postgresql.conf) files, and a [`init.sql`](./init.sql) script to create some tables and records on startup.

## Launching

To start the Postgres container, run

```shell
podman compose up --detach
```

## Accessing

Once the container is running, you can access the database using the `psql` command-line tool.

```shell
PGPASSWORD=postgres psql -h localhost -U postgres -d mydatabase
```

## Teardown

To stop and remove the containers, run

```shell
podman compose down --volumes
```

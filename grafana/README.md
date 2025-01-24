# Grafana

Grafana is an open-source platform for monitoring and observability.

## Launching

To start the Grafana container, run

```shell
docker compose up --detach
```

## Accessing

Once the container is running, you can access Grafana at [http://localhost:3000](http://localhost:3000), using

- Username: `admin`
- Password: `admin`

## Teardown

To stop and remove the containers, run

```shell
docker compose down --volumes
```

# Prometheus

Prometheus is a monitoring and alerting toolkit.

## Launching

To start the Prometheus server, run

```shell
podman compose up --detach
```

## Accessing

Prometheus is available at [http://localhost:9090](http://localhost:9090).

## Teardown

To stop and remove the containers, run

```shell
podman compose down --volumes
```

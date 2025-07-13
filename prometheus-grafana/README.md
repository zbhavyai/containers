# Prometheus and Grafana

Grafana is [provisioned](https://grafana.com/tutorials/provision-dashboards-and-data-sources/) with Prometheus datasource.

## Launching

To start the Prometheus and Grafana containers, run

```shell
podman compose up --detach
```

## Accessing

Once the container is running, you can access Grafana at [http://localhost:3000](http://localhost:3000), using

- Username: `admin`
- Password: `admin`

## Teardown

To stop and remove the containers, run

```shell
podman compose down --volumes
```

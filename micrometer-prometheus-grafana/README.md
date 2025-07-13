# Micrometer with Prometheus and Grafana

Micrometer is a vendor-neutral application metrics facade. This example demonstrates how to collect metrics from a Java (Quarkus) application using Micrometer, store them in Prometheus, and visualize them with Grafana.

Grafana is [provisioned](https://grafana.com/tutorials/provision-dashboards-and-data-sources/) with Prometheus datasource and a slightly modified [JVM (Micrometer)](https://grafana.com/grafana/dashboards/4701-jvm-micrometer/) dashboard.

## Launching

To start the Micrometer application, Prometheus, and Grafana containers, run

```shell
podman compose up --build --detach
```

## Accessing

Once containers are up, access the JVM (Micrometer) dashboard at [http://localhost:3007/d/jvm-micrometer/jvm-micrometer?orgId=1&refresh=30s&from=now-5m&to=now&kiosk](http://localhost:3007/d/jvm-micrometer/jvm-micrometer?orgId=1&refresh=30s&from=now-5m&to=now&kiosk). There is no need to log in, since anonymous access is enabled.

## Teardown

To stop and remove the containers, run

```shell
podman compose down --volumes
```

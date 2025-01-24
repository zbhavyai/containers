# Micrometer with Prometheus and Grafana

Micrometer is a vendor-neutral application metrics facade. This example demonstrates how to collect metrics from a Java (Quarkus) application using Micrometer, store them in Prometheus, and visualize them with Grafana.

The Grafana dashboard used in this example is slightly modified version of [JVM Micrometer](https://grafana.com/grafana/dashboards/4701) dashboard. The Prometheus data source is pre-configured in the dashboard. They both are [provisioned](https://grafana.com/tutorials/provision-dashboards-and-data-sources/).

## Launching

To start the Micrometer application, Prometheus, and Grafana containers, run

```shell
docker compose up --build --detach
```

## Accessing

Once containers are up, access the JVM (Micrometer) dashboard at [http://localhost:3000/d/jvm-micrometer/jvm-micrometer?orgId=1&refresh=30s&from=now-5m&to=now&kiosk](http://localhost:3000/d/jvm-micrometer/jvm-micrometer?orgId=1&refresh=30s&from=now-5m&to=now&kiosk). There is no need to log in, since anonymous access is enabled.

## Teardown

To stop and remove the containers, run

```shell
docker compose down --volumes
```

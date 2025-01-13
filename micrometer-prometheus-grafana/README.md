## Micrometer, Prometheus, and Grafana

### Setup

```shell
docker compose up --build --detach
```

Once up, access the dashboard at [http://localhost:3000/d/jvm-micrometer/jvm-micrometer?kiosk](http://localhost:3000/d/jvm-micrometer/jvm-micrometer?kiosk).

### Teardown

```shell
docker compose down --volumes
```

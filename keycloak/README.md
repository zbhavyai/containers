# Keycloak

Keycloak is an open-source Identity and Access Management solution aimed at modern applications and services.

## Launching

To start the Keycloak container, run

```shell
docker compose up --detach
```

## Accessing

Once the container is running, you can access Keycloak at [http://localhost:8080](http://localhost:8080), using

- Username: `admin`
- Password: `admin`

## Teardown

To stop and remove the containers, run

```shell
docker compose down --volumes
```

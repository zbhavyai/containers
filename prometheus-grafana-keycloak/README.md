# Prometheus, Grafana, and Keycloak

A demonstration of integrating Grafana with Keycloak for authentication and authorization.

The Grafana is configured to use Keycloak as an OIDC provider; and for easy API access, a local `apiadmin` user can be used.

## Launching

To start the Prometheus, Grafana, and Keycloak containers, run

```shell
docker compose up --detach
```

## Accessing

After the containers start, access Grafana at [http://localhost:3000](http://localhost:3000). The `my-realm` configuration in Keycloak defines the default user

- Username: `admin`
- Password: `admin`

You can manage users in the Keycloak Admin Console at [http://localhost:8080/admin/master/console/#/my-realm/users](http://localhost:8080/admin/master/console/#/my-realm/users). These users can then log in to Grafana.

For programmatic access to the Grafana API, use these credentials

- Username: `apiadmin`
- Password: `apiadmin`

Exampe,

```shell
curl --silent --user apiadmin:apiadmin --location localhost:3000/api/datasources | jq
```

One can also directly get the token from Keycloak using the `grafana-client` credentials. Example,

```shell
curl --silent --request POST --header 'Accept: application/json'--header  --location 'http://localhost:8080/realms/my-realm/protocol/openid-connect/token' --data-urlencode 'client_id=grafana-client' --data-urlencode 'grant_type=client_credentials'  --data-urlencode 'username=admin' --data-urlencode 'client_secret=grafana-client-secret' | jq -r '.access_token'
```

## Teardown

To stop and remove the containers, run

```shell
docker compose down --volumes
```

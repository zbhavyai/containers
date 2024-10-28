## Prometheus, Grafana, and Keycloak

### Setup

```shell
docker compose up --detach
```

### Token from Keycloak

```shell
curl --silent --request POST --header 'Accept: application/json'--header  --location 'http://localhost:8080/realms/my-realm/protocol/openid-connect/token' --data-urlencode 'client_id=grafana-client' --data-urlencode 'grant_type=client_credentials'  --data-urlencode 'username=admin' --data-urlencode 'client_secret=grafana-client-secret' | jq -r '.access_token'
```

### Teardown

```shell
docker compose down --volumes
```

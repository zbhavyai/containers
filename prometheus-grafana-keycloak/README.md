## Prometheus, Grafana, and Keycloak

### Deploy with docker compose

```shell
docker compose up --detach
```

### Stop and remove the containers

```shell
docker compose down --volumes
```

### Token from Keycloak

```shell
curl --silent --request POST --header 'Accept: application/json'--header  --location 'http://localhost:8080/realms/my-realm/protocol/openid-connect/token' --data-urlencode 'client_id=grafana-client' --data-urlencode 'grant_type=client_credentials'  --data-urlencode 'username=admin' --data-urlencode 'client_secret=grafana-client-secret' | jq -r '.access_token'
```

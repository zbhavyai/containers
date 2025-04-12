# Ollama and Open WebUI

Ollama is a lightweight API server designed for hosting and interacting with machine learning models. Open WebUI is a user-friendly web interface for managing and utilizing these models. Together, they provide a seamless way to deploy, interact with, and manage ML models locally.

I could have used the Open WebUI image that is bundled ollama support, `ghcr.io/open-webui/open-webui:ollama`, but having a separate container for both allows for more flexibility.

## Launching

To start the Ollama and Open WebUI containers, run

```shell
docker compose up --detach
```

## Accessing

Both Ollama and Open WebUI can be accessed independently. Ollama is accessed using its API at [localhost:11434](http://localhost:11434), while Open WebUI is accessed via a web interface at [localhost:10000](http://localhost:10000).

Check if Ollama is up and running

```shell
curl --request GET --location http://localhost:11434
```

Pull the model `tinyllama`

```shell
curl --request POST --location http://localhost:11434/api/pull -d '{
  "model": "tinyllama"
}'
```

Sending a prompt to the model

```shell
curl --silent --request POST --location http://localhost:11434/api/generate --data '{
  "model": "tinyllama",
  "stream": false,
  "prompt": "Why is the sky blue?"
}' | jq --compact-output
```

## Teardown

To stop and remove the containers, run

```shell
docker compose down --volumes
```

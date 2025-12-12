# vLLM

vLLM is a high-performance library for LLM inference and serving with OpenAI-compatible API.

## Launching

To start the vLLM container, run

```shell
export HF_TOKEN=<your_huggingface_token_here>
podman compose up --detach
```

## Accessing

Once the container is running, you can access the OpenAI-compatible API at [http://localhost:8000](http://localhost:8000).

You can view the OpenAPI documentation at [http://localhost:8000/docs](http://localhost:8000/docs).

## Teardown

To stop and remove the containers, run

```shell
podman compose down --volumes
```

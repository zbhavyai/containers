# Google Chrome and TigerVNC Server

Run Google Chrome on a X session created by TigerVNC server and access it using a VNC client. Openbox is used as the window manager.

## Launching

To build and start the container, run

```shell
docker compose up --detach
```

## Accessing

Once the container is running, use any VNC client, like Remmina, on the host machine to connect to the URL `vnc://127.0.0.1:6100`. There is no password set.

## Teardown

To stop and remove the containers, run

```shell
docker compose down --volumes
```

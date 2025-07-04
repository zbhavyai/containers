# Containers

Curated list of usage of various tools and services using containers.

## Single Service Examples

These examples demonstrate the setup of individual services using docker compose.

| Services                             | Description                                                                             |
| ------------------------------------ | --------------------------------------------------------------------------------------- |
| [Jenkins](jenkins)                   | Standalone Jenkins service for CI/CD.                                                   |
| [Keycloak](keycloak)                 | Standalone Keycloak service for identity management.                                    |
| [Prometheus](prometheus)             | Standalone Prometheus service for monitoring.                                           |
| [PostgreSQL](postgres)               | Standalone PostgreSQL service for databases.                                            |
| [PostgreSQL Custom](postgres-custom) | Standalone PostgreSQL service with some customizations and a init script for databases. |
| [Grafana](grafana)                   | Standalone Grafana service for visualization.                                           |
| [Windows](windows)                   | Windows on docker                                                                       |
| [Open WebUI](openwebui)              | Standalone Open WebUI for connecting to remote Ollama                                   |
| [Google Chrome](chrome-tigervnc)     | Google Chrome running on a TigerVNC server with Openbox as the window manager.          |
| [Mozilla Firefox](firefox-tigervnc)  | Mozilla Firefox running on a TigerVNC server with Openbox as the window manager.        |

## Multi-Service Examples

These examples demonstrate the setup of multiple integrated services using docker compose.

| Services                                                           | Description                                                                                                                                                                                                                                                                                          |
| ------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Prometheus / Grafana](prometheus-grafana)                         | Integration of `Prometheus` and `Grafana`. `Grafana` is pre-configured to use `Prometheus` as an uneditable datasource.                                                                                                                                                                              |
| [Prometheus / Grafana / Keycloak](prometheus-grafana-keycloak)     | Integration of `Prometheus`, `Grafana`, and `Keycloak`. `Grafana` is configured with OIDC authentication via `Keycloak`, granting all authenticated users the `Viewer` role, and `Prometheus` is set as an uneditable datasource.                                                                    |
| [Micrometer / Prometheus / Grafana](micrometer-prometheus-grafana) | Integration of a java app exposing default metrics using [Micrometer](https://micrometer.io/), `Prometheus`, and `Grafana`. `Grafana` is provisioned with `Prometheus` datasource and a slightly modified [JVM (Micrometer)](https://grafana.com/grafana/dashboards/4701-jvm-micrometer/) dashboard. |
| [Wordpress / MySQL](wordpress-mysql)                               | Integration of `Wordpress` and `MySQL`.                                                                                                                                                                                                                                                              |
| [BookStack / MySQL](bookstack-mysql)                               | Integration of `BookStack` and `MySQL`.                                                                                                                                                                                                                                                              |
| [Ollama / Open WebUI](ollama-openwebui)                            | Integration of `Ollama` and `Open WebUI`. Ollama for running large language models and Open WebUI for having chat like interface.                                                                                                                                                                    |

## Tools

| Tools              | Description                                    |
| ------------------ | ---------------------------------------------- |
| [TexLive](texlive) | Use texlive to generate PDFs from LaTeX files. |

# Containers

Curated list of usage of various tools and services using containers.

## Single Service Examples

These examples demonstrate the setup of individual services using docker compose.

| Services                 | Description                                          |
| ------------------------ | ---------------------------------------------------- |
| [Keycloak](keycloak)     | Standalone Keycloak service for identity management. |
| [Prometheus](prometheus) | Standalone Prometheus service for monitoring.        |
| [PostgreSQL](postgres)   | Standalone PostgreSQL service for databases.         |

## Multi-Service Examples

These examples demonstrate the setup of multiple integrated services using docker compose.

| Services                                                       | Description                                                                                                                                                                                                                       |
| -------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Prometheus / Grafana](prometheus-grafana)                     | Integration of `Prometheus` and `Grafana`. `Grafana` is pre-configured to use `Prometheus` as an uneditable datasource.                                                                                                           |
| [Prometheus / Grafana / Keycloak](prometheus-grafana-keycloak) | Integration of `Prometheus`, `Grafana`, and `Keycloak`. `Grafana` is configured with OIDC authentication via `Keycloak`, granting all authenticated users the `Viewer` role, and `Prometheus` is set as an uneditable datasource. |
| [Wordpress / MySQL](wordpress-mysql)                           | Integration of `Wordpress` and `MySQL`.                                                                                                                                                                                           |

## Tools

| Tools              | Description                                    |
| ------------------ | ---------------------------------------------- |
| [TexLive](texlive) | Use texlive to generate PDFs from LaTeX files. |

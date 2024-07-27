# Containers

This repository provides examples of integrating and deploying various services using Docker Compose. By utilizing a single `compose.yaml` file, you can easily set up and manage multiple services for development and testing purposes.

## Single Service Examples

These examples demonstrate the setup of individual services using docker compose.

| Services                 | Description                                          |
| ------------------------ | ---------------------------------------------------- |
| [Keycloak](keycloak)     | Standalone Keycloak service for identity management. |
| [Prometheus](prometheus) | Standalone Prometheus service for monitoring.        |

## Multi-Service Examples

These examples demonstrate the setup of multiple integrated services using docker compose.

| Services                                                       | Description                                                                                                                                                                                                                       |
| -------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Prometheus / Grafana](prometheus-grafana)                     | Integration of `Prometheus` and `Grafana`. `Grafana` is pre-configured to use `Prometheus` as an uneditable datasource.                                                                                                           |
| [Prometheus / Grafana / Keycloak](prometheus-grafana-keycloak) | Integration of `Prometheus`, `Grafana`, and `Keycloak`. `Grafana` is configured with OIDC authentication via `Keycloak`, granting all authenticated users the `Viewer` role, and `Prometheus` is set as an uneditable datasource. |
| [Wordpress / MySQL](wordpress-mysql)                           | Integration of `Wordpress` and `MySQL`.                                                                                                                                                                                           |

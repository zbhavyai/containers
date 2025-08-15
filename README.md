# Containers

Curated list of usage of various tools and services using containers.

[![Lint](https://img.shields.io/github/actions/workflow/status/zbhavyai/containers/lint.yml?label=Lint)](https://github.com/zbhavyai/containers/actions/workflows/lint.yml)
[![License](https://img.shields.io/github/license/zbhavyai/containers?label=License)](https://github.com/zbhavyai/containers/blob/main/LICENSE)

> [!IMPORTANT]
> You'll notice `compose.yaml` uses `:ro,Z` on certain volume mounts.
>
> - `:ro` makes the mount read-only. Its optional, but protects host config from edits.
> - `:Z` is required on Fedora and other SELinux-enforcing systems when bind-mounting host files or directories so the container can access them. This is usually not needed on Ubuntu, which use AppArmor instead of SELinux.

### CI/CD & Developer Tools

- [Jenkins](jenkins): Build, test, and deploy applications automatically with powerful CI/CD pipelines.
- [TeX Live](texlive): Compile LaTeX documents into PDFs using a containerized TeX Live environment.
- [Google Chrome](chrome-tigervnc): Browse the web via Chrome in a TigerVNC desktop session with Openbox.
- [Mozilla Firefox](firefox-tigervnc): Browse the web via Firefox in a TigerVNC desktop session with Openbox.
- [Windows](windows): Run a full Windows environment inside Docker for testing or legacy software.

### Identity & Security

- [Keycloak](keycloak): Manage user identities, secure apps, and enable SSO with OAuth2/OpenID integration.
- [Prometheus / Grafana / Keycloak](prometheus-grafana-keycloak): Secure Grafana dashboards with Keycloak OIDC, auto-assign Viewer role, and pull metrics from Prometheus as a locked datasource.

### Monitoring & Observability

- [Prometheus](prometheus): Monitor systems and apps, collect metrics, and trigger alerts in real time.
- [Grafana](grafana): Create interactive dashboards to visualize metrics and application insights.
- [Prometheus / Grafana](prometheus-grafana): Preconfigured stack where Grafana visualizes metrics from Prometheus as a locked datasource.
- [Micrometer / Prometheus / Grafana](micrometer-prometheus-grafana): Java app exposing Micrometer metrics to Prometheus, with Grafana provisioned for a customized JVM (Micrometer) dashboard.

### Databases

- [PostgreSQL](postgres): Store, query, and manage structured data with a high-performance SQL database.
- [PostgreSQL Custom](postgres-custom): Launch a preconfigured PostgreSQL with custom settings and auto-initialized databases.
- [WordPress / MySQL](wordpress-mysql): Launches WordPress with a MySQL backend, ready for initial setup through the WordPress installer.
- [BookStack / MySQL](bookstack-mysql): Knowledge management platform powered by BookStack with MySQL database storage.

### AI & Machine Learning

- [Open WebUI](openwebui): Interact with a remote Ollama AI model through a clean, browser-based UI.
- [Ollama / Open WebUI](ollama-openwebui): Run large language models with Ollama and interact through a browser-based Open WebUI chat interface.

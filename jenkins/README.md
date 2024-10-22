## Jenkins

### Deploy with docker compose

```shell
docker compose up --detach
```

### Stop and remove the containers

```shell
docker compose down --volumes
```

### Printing plugin versions

Go to the [Jenkins Script Console](http://localhost:8080/script) and run the following script

```groovy
Jenkins.instance.pluginManager.plugins.each{
  plugin ->
    println ("${plugin.getDisplayName()} (${plugin.getShortName()}): ${plugin.getVersion()}")
}
```

[Reference](https://stackoverflow.com/a/35292719/16018083)

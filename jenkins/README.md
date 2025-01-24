# Jenkins

Jenkins is an open-source automation server. The setup consists of a Jenkins controller and two Jenkins agents. Some [additional plugins](./casc/plugins.txt) are also installed by default.

## Launching

To start the Jenkins controller, run

```shell
docker compose up --detach
```

Once the Jenkins container is running, you can access it at [http://localhost:8080](http://localhost:8080), using

- Username: `admin`
- Password: `admin`

Now, to setup the Jenkins agents, visit [node-1](http://localhost:8080/computer/node-1/) and [node-2](http://localhost:8080/computer/node-2/) configuration on the Jenkins controller, get the secrets, and run the below commands

```shell
docker container run --rm --init --detach --network jenkins_jenkins_net --name jenkins-agent-1 jenkins/inbound-agent:jdk17 -url http://jenkins:8080 -secret "<SECRET>" -name "node-1" -workDir "/home/jenkins/agent"

docker container run --rm --init --detach --network jenkins_jenkins_net --name jenkins-agent-2 jenkins/inbound-agent:jdk17 -url http://jenkins:8080 -secret "<SECRET>" -name "node-2" -workDir "/home/jenkins/agent"
```

## Printing plugin versions

Go to the [Jenkins Script Console](http://localhost:8080/script) and run the following script

```groovy
Jenkins.instance.pluginManager.plugins.each{
  plugin ->
    println ("${plugin.getDisplayName()} (${plugin.getShortName()}): ${plugin.getVersion()}")
}
```

[Reference](https://stackoverflow.com/a/35292719/16018083)

## Teardown

To stop and remove the containers, run

```shell
docker container stop jenkins-agent-1 jenkins-agent-2
docker compose down --volumes
```

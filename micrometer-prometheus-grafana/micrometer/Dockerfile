# Build Stage
FROM eclipse-temurin:17-jdk AS build
LABEL maintainer="https://zbhavyai.github.io"
LABEL repo="https://github.com/zbhavyai/containers"
WORKDIR /opt/app
COPY pom.xml mvnw ./
COPY .mvn .mvn
RUN ./mvnw dependency:go-offline
COPY src src
RUN ./mvnw package

# Runtime Stage
FROM eclipse-temurin:17-jre
LABEL maintainer="https://zbhavyai.github.io"
LABEL repo="https://github.com/zbhavyai/containers"
WORKDIR /opt/app
COPY --from=build /opt/app/target/*.jar app.jar
EXPOSE 3005
CMD ["java", "-jar", "app.jar"]

# Use OpenJDK base image

FROM amazoncorretto:17-alpine-jdk   

WORKDIR /app


COPY target/java-jenkins-docker-1.0-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]

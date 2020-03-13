FROM openjdk:8-alpine
EXPOSE 5000
# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/my-app-1.0-SNAPSHOT.jar $PROJECT_HOME/my-app-1.0-SNAPSHOT.jar
#COPY target/simple-java-maven-app.jar $PROJECT_HOME/simple-java-maven-app.jar

WORKDIR $PROJECT_HOME
ENTRYPOINT ["java","-jar","$PROJECT_HOME/my-app-1.0-SNAPSHOT.jar"]

#CMD ["java", "-Dspring.data.mongodb.uri=mongodb://mongo:27017/spring-mongo","-Djava.security.egd=file:/dev/./urandom","-jar",

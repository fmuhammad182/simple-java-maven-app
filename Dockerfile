#FROM openjdk:8-alpine

# Required for starting application up.
#RUN apk update && apk add /bin/sh

#RUN mkdir -p /opt/app
#ENV PROJECT_HOME /opt/app

#COPY target/my-app-1.0-SNAPSHOT.jar $PROJECT_HOME/my-app-1.0-SNAPSHOT.jar
#COPY target/simple-java-maven-app.jar $PROJECT_HOME/simple-java-maven-app.jar
#EXPOSE 5000
#WORKDIR $PROJECT_HOME
#ENTRYPOINT ["java","-jar","$PROJECT_HOME/my-app-1.0-SNAPSHOT.jar"]
 
#CMD ["java", "-Dspring.data.mongodb.uri=mongodb://mongo:27017/spring-mongo","-Djava.security.egd=file:/dev/./urandom","-jar",
FROM openjdk:8-jdk-alpine

ARG JAR_FILE=target/my-app-1.0-SNAPSHOT.jar
ARG JAR_LIB_FILE=target/

# cd /usr/local/runme
WORKDIR /usr/local/runme
EXPOSE 5000
# copy target/find-links.jar /usr/local/runme/app.jar
COPY ${JAR_FILE} my-app-1.0-SNAPSHOT.jar

# copy project dependencies
# cp -rf target/lib/  /usr/local/runme/lib
ADD ${JAR_LIB_FILE} lib/

# java -jar /usr/local/runme/app.jar
ENTRYPOINT ["java","-jar","my-app-1.0-SNAPSHOT.jar"]
CMD tail -f /dev/null

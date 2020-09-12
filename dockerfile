# For Java 8, try this
FROM openjdk:8-jdk-alpine

# Refer to Maven build -> finalName
ARG JAR_FILE=target/PhotoAppApiUsers1-0.0.1-SNAPSHOT.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/PhotoAppApiUsers1-0.0.1-SNAPSHOT.jar/opt/app/userclient.jar
COPY ${JAR_FILE} userclient.jar

# java -jar /opt/app/userclient.jar
ENTRYPOINT ["java","-jar","userclient.jar"]

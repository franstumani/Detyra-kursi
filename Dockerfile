FROM adoptopenjdk:17.0.9-jdk-hotspot
VOLUME /tmp
EXPOSE 8080
WORKDIR /app
ARG JAR_FILE=target/RandomNumberGenerator-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} Detyre-Kursi.jar
ENTRYPOINT ["java","-jar","Detyre-Kursi.jar"]

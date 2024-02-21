FROM openjdk:11-jre-slim
ARG JAR_FILE="${WORKSPACE}/target/my-app-1.0-SNAPSHOT.jar"
COPY ${JAR_FILE} /app.jar
ENTRYPOINT [ "java", "/app.jar" ]
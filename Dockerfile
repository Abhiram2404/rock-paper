FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/*.jar /app/my-app.jar
EXPOSE 8080
CMD ["tail", "-f", "/dev/null"]
ENTRYPOINT ["java", "-jar", "/app/my-app.jar"]

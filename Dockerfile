FROM maven:3.8.5-openjdk-17-slim
WORKDIR /app
COPY target/demoForJenkins-0.0.1-SNAPSHOT.jar /app/demoForJenkins.jar
CMD ["mvn", "clean", "install"]
ENTRYPOINT ["java","-jar","/app/demoForJenkins.jar"]


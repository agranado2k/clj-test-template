FROM openjdk:8-alpine

COPY target/uberjar/pipeline.jar /pipeline/app.jar

EXPOSE 3000

CMD ["java", "-jar", "/pipeline/app.jar"]

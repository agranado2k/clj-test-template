# Build app
FROM clojure:openjdk-8-lein-2.9.5 AS builder
WORKDIR /app
COPY . .
RUN lein uberjar

# Run app
FROM openjdk:8-jre-alpine

COPY --from=builder /app/target/uberjar/pipeline.jar /pipeline/app.jar

EXPOSE 3000

CMD ["java", "-jar", "/pipeline/app.jar"]

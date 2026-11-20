FROM eclipse-temurin:17-jre-jammy

LABEL org.opencontainers.image.title="Taskana Backend" \
      org.opencontainers.image.source="https://github.com/Taskana/taskana"

RUN useradd --system --uid 10001 taskana

WORKDIR /app
COPY rest/taskana-rest-spring-example-boot/target/taskana-rest-spring-example-boot.jar app.jar

USER 10001
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]

FROM maven:3.8.4-openjdk-17 as maven
COPY ./pom.xml ./pom.xml
COPY ./src ./src
RUN mvn clean package

FROM openjdk:17
WORKDIR /app
COPY --from=maven target/ticketmagpie-0.1.0.jar ./app.jar
EXPOSE 80
CMD ["java", "-jar", "app.jar"]

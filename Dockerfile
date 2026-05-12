FROM eclipse-temurin:17

WORKDIR /app

COPY target/javaapp-*.jar app.jar

CMD ["java","-jar","app.jar"]

FROM eclipse-temurin:21

WORKDIR /app

COPY . .

RUN chmod +x mvnw

RUN ./mvnw clean package -DskipTests

EXPOSE 8080

CMD ["sh", "-c", "java -jar target/*.jar"]emo_chat-0.0.1-SNAPSHOT.jar"]
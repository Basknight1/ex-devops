FROM maven:3.8.4-openjdk-17-slim AS build

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean compile exec:java -DskipTests

FROM nginx:1.24-alpine

COPY --from=build /app/output /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
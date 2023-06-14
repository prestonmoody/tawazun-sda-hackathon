FROM maven:3.8.6-openjdk-11 as maven
ENV DB_URL=localhost
ENV DB_NAME=tawazun
ENV DB_USERNAME=root
ENV DB_PASSWORD=DevOps@2022
ENV DB_PORT=3306
WORKDIR /app
COPY pom.xml .
COPY . .
RUN mvn package

EXPOSE 8080
ENTRYPOINT ["java","-jar","target/tawazun.war"]

FROM maven:3.8.6-openjdk-11 as maven
ENV DB_URL= http://mysql-serverless.cluster-chzveui56egk.us-east-1.rds.amazonaws.com/
ENV DB_NAME=goldendb
ENV DB_USERNAME=cpadmin
ENV DB_PASSWORD=CvwzjRgmx7azKH8
ENV DB_PORT=3306
WORKDIR /app
COPY pom.xml .
COPY . .
RUN mvn package

EXPOSE 8080
ENTRYPOINT ["java","-jar","target/tawazun.war"]

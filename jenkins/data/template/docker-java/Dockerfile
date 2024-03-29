FROM openjdk:8
WORKDIR /app
COPY ./target/*.jar /app
EXPOSE 80
ENTRYPOINT ["java","-jar","-Dserver.port=80 -Dspring.profiles.active={{env}}","/app.jar"]
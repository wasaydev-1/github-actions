FROM eclipse-temurin:17-jdk-alpine
    
EXPOSE 8080

RUN ls 

ENV APP_HOME /usr/src/app

COPY target/*.jar /usr/src/app/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]

#Start with a base image containing Java runtime
FROM openjdk:17-alpine

#Add Maintainer Info
LABEL maintainer="Leonardo Nishida <leonardoh.nishida@gmail.com>"

#The application's jar file
ARG JAR_FILE

#Add the application's jar to the container
COPY ${JAR_FILE} licensing-service-0.0.1-SNAPSHOT.jar

#Execute the application
ENTRYPOINT ["java","-jar","/licensing-service-0.0.1-SNAPSHOT.jar"]
#Start with a base image containing Java Runtime dependency
FROM openjdk:11

#Make port 8080 available to the world outside this container
EXPOSE 8080

ADD target/spring-docker-jenkins.jar spring-docker-jenkins.jar

#Run the jar file
ENTRYPOINT ["java, "-jar", "spring-docker-jenkins.jar"]
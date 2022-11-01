#Start with a base image containing Java Runtime dependency
FROM openjdk:11

#Make port 8080 available to the world outside this container
EXPOSE 8080

ADD target/docker-jenkins-integration.jar docker-jenkins-integration.jar

#Run the jar file
ENTRYPOINT ["java, "-jar", "docker-jenkins-integration.jar"]
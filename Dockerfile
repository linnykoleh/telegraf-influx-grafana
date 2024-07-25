FROM openjdk:17

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/*.jar /app/myapp.jar

ADD https://repo1.maven.org/maven2/org/jolokia/jolokia-jvm/1.6.2/jolokia-jvm-1.6.2-agent.jar /app/jolokia-agent.jar

EXPOSE 8778
EXPOSE 8082

ENTRYPOINT ["java", "-javaagent:/app/jolokia-agent.jar=host=0.0.0.0,port=8778", "-jar", "/app/myapp.jar"]

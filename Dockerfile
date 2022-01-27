FROM frolvlad/alpine-oraclejre8:slim
VOLUME /tmp
ADD aeroconnect-edifact-message-processor-service-latest.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
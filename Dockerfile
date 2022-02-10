FROM maven:3.5.2-jdk-8-alpine
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package
COPY /tmp/target/hello-1.0.war ./target/hello-1.0.war

#FROM tomcat:9.0-jre8-alpine
#COPY --from=MAVEN_TOOL_CHAIN /tmp/target/hello-1.0.war $CATALINA_HOME/webapps/hello-1.0.war
#EXPOSE 8080:8080

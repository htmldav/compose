FROM maven:3.5.2-jdk-8-alpine
# as maven_tool_chain
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package
#RUN echo "PRIVET PRIVET" > privet111.txt 
#COPY --from=maven_tool_chain /tmp/target/hello-1.0.war /tmp/

#FROM tomcat:9.0-jre8-alpine
#COPY --from=MAVEN_TOOL_CHAIN /tmp/target/hello-1.0.war $CATALINA_HOME/webapps/hello-1.0.war
#EXPOSE 8080:8080

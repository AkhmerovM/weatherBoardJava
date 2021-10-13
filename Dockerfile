FROM maven:3.6.1-jdk-11 as maven_builder
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN mvn package
FROM tomcat:9.0-alpine
WORKDIR /usr/local/tomcat/webapps/
RUN rm -rf /usr/local/tomcat/webapps/ROOT/
COPY --from=maven_builder /usr/src/myapp/target/first /usr/local/tomcat/webapps/ROOT/
EXPOSE 8080
CMD ["catalina.sh", "run"]
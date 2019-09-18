FROM openjdk:11-jdk
#VOLUME /tmp
ADD target/mymavenforcicd-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

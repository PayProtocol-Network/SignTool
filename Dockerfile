FROM eclipse-temurin:8-jdk
EXPOSE 9980

ENV JAVA_PATH /home/java

VOLUME /tmp
ADD /PayTool.jar ${JAVA_PATH}/PayTool.jar

RUN bash -c 'touch ${JAVA_PATH}/PayTool.jar'

ENTRYPOINT ["java","-jar","/home/java/PayTool.jar"]

FROM openjdk:8
 
RUN mkdir -p /app/qna
COPY ./target/QandA-0.0.1-SNAPSHOT.jar /app/qna/qna.jar

ENTRYPOINT ["java","-jar","/app/qna/qna.jar"]

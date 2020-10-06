from openjdk:8
 
run mkdir -p /app/qna
copy ./target/QandA-0.0.1-SNAPSHOT.jar /app/qna/qna.jar

cmd ['java -jar /app/qna/qna.jar']

from openjdk:8
 
run mkdir -p /app/qna
copy target /app/qna

cmd ['java -jar /app/qna/qna.jar']

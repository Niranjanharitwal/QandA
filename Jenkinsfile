pipeline{
    
    agent any
    
    stages{
     
        stage("Maven") {
            steps {
                sh ' mvn clean compile install '
            }
        }
        stage("docker") {
            steps {
                sh ' sudo systemctl start docker'
                sh 'sudo chmod 777 /var/run/docker.sock '
                sh ' docker build -t docker.com/nharitwa/qanda:latest . '
                sh ' docker push docker.com/nharitwa/qanda:latest '
            }
        }
        stage("deployment"){
            steps {
                echo 'stage: deploymnet'
            }
        }
    }
}

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
                sh ' docker build  . '
                echo 'stage: docker'
            }
        }
        stage("deployment"){
            steps {
                echo 'stage: deploymnet'
            }
        }
    }
}

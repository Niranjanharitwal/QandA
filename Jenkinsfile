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

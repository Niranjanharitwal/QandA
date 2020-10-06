pipeline{
    
    agent any
    
    stages{
     
        stage("Maven") {
            steps {
                sh ' mvn clean compile package '
            }
        }
        stage("docker") {
            steps {
                sh ' docker build -t QNA:${currentBuild.number} . '
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

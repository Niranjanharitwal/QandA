pipeline{
    
    agent none
    
    stages{
     
        stage("Maven") {
            steps {
                sh ' mvn clean compile '
            }
        }
        stage("docker") {
            steps {
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

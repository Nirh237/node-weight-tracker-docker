pipeline {
    agent {label "slave-ci-cd"}

    stages {
            
        stage('Build') {
            // Creating env file 
            steps {
              
              echo 'building...'  
            }
        }
        
   

    stage('Build Image') {
        steps {
            sh 'sudo docker build -t nirh237/weight-tracker:$BUILD_NUMBER .'
        }
    }

    stage('Publish Image') {
        steps {
            sh 'sudo docker login -u nirh237 -p $DOCKER_CREDS'
            sh 'sudo docker push $DOCKER_REPOSITORY/weight-tracker:$BUILD_NUMBER'
        }
    }

    /*
   post {
            always {
                    echo 'Creating artifacts'
                    sh 'zip -r my_archive.zip /home/nirh237/workspace/CI'
                    echo 'archiving artifacts'
                    archiveArtifacts artifacts: 'my_archive.zip', onlyIfSuccessful: true
            }
    	}
    */
}
    environment {
        DOCKER_REPOSITORY = 'nirh237'
        DOCKER_CREDS = credentials('docker-password')
    }

}







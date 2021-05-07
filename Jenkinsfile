pipeline {
    agent {label "slave-ci-cd"}

    stages {
            
        stage('Build') {
            // Creating env file 
            steps {
                   sh 'npm install'
                   
            }
        }
        
   

    stage('Build Image') {
        steps {
            sh 'docker build -t nirh237/weight-tracker:$BUILD_NUMBER .'
        }
    }

    stage('Publish Image') {
        steps {
            sh 'docker login -u nirh237 -p docker8801'
            sh 'docker push $DOCKER_REPOSITORY/weight-tracker:$BUILD_NUMBER'
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
/*
    environment {
        DOCKER_REPOSITORY = 'nirh237'
        DOCKER_CREDS = credentials('docker-password')
    }
*/
}







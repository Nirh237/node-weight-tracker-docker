pipeline {
    agent {label "slave-ci-cd"}

    stages {
            
        stage('Build') {
            // Creating env file 
            steps {
                   sh 'npm install'
                   
            }
        }
        
    }

    stage('Build Image') {
        steps {
            sh 'docker build -t $DOCKER_REPOSITORY/demo-app:$BUILD_NUMBER .'
        }
    }

    stage('Publish Image') {
        steps {
            sh 'docker login -u nirh237 -p $DOCKER_CREDS'
            sh 'docker push $DOCKER_REPOSITORY/demo-app:$BUILD_NUMBER'
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

    enviroment {
        DOCKER_REPOSITORY = 'nirh237'
        DOCKER_CREDS = credentials('docker-password')
    }
}








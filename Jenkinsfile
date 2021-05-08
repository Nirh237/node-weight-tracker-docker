pipeline {
    agent {label "build"}

    stages {
            
        

    stage('Build Image') {
        steps {
            sh 'sudo docker build -t nirh237/weight-tracker:latest .'
        }
    }

    stage('Publish Image') {
        steps {
            sh 'sudo docker login -u nirh237 -p $DOCKER_CREDS'
            sh 'sudo docker push $DOCKER_REPOSITORY/weight-tracker:latest'
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







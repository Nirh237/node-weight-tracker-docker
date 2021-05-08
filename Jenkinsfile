pipeline {
    agent {label "build"}

    stages {
            
        
//build Docker image
    stage('Build Image') {
        steps {
            sh 'sudo docker build -t $DOCKER_REPOSITORY/weight-tracker:$BUILD_NUMBER .'
        }
    }
//push image to DockerHub repo
    stage('Publish Image') {
        steps {
            sh 'sudo docker login -u nirh237 -p $DOCKER_CREDS'
            sh 'sudo docker push $DOCKER_REPOSITORY/weight-tracker:$BUILD_NUMBER'
        }
    }

}
    environment {
        DOCKER_REPOSITORY = 'nirh237'
        DOCKER_CREDS = credentials('docker-password')
    }

}







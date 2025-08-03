pipeline {
    agent any

    environment {
        IMAGE_NAME = "hello-world-app"
    }

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/AmanGalav11/hello-world.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Kubernetes Deploy') {
            steps {
                sh 'kubectl apply -f k8s/deployment.yaml'
            }
        }
    }
}

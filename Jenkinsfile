pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'git@github.com:AmanGalav11/hello-world.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("aman-hello-world")
                }
            }
        }

        stage('Push to Docker Registry') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-creds', url: '']) {
                    dockerImage.push("latest")
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/deployment.yaml'
            }
        }
    }
}

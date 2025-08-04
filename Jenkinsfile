pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/AmanGalav11/hello-world.git'
            }
        }
        stage('Build') {
            steps {
                sh './mvnw package'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t hello-world .'
            }
        }
        stage('K8s Deploy') {
            steps {
                sh 'kubectl apply -f k8s-deployment.yaml'
            }
        }
    }
}

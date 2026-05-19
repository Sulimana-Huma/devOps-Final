pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git 'https://github.com/Sulimana-Huma/devOps-Final.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-final-app ./frontend'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker rm -f devops-container || true'
                sh 'docker run -d -p 80:80 --name devops-container devops-final-app'
            }
        }
    }
}
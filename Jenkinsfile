pipeline {

    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git 'YOUR_GITHUB_REPO_LINK'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-project ./frontend'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 80:80 devops-project'
            }
        }

    }
}
pipeline {
    agent any

    tools {
        // Use the Maven tool name configured in Jenkins
        maven 'Maven 3'
    }

    environment {
        DOCKERHUB_CREDENTIALS = credentials('DockerHubCredentials')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/MDRakib25/COMP367-Lab2.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    sh 'docker build -t mrakib25/comp367-lab2:latest .'
                }
            }
        }

        stage('Docker Login') {
            steps {
                script {
                    sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                }
            }
        }

        stage('Docker Push') {
            steps {
                script {
                    sh 'docker push mrakib25/comp367-lab2:latest'
                }
            }
        }
    }
}

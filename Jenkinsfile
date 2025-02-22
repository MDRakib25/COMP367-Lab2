pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/MDRakib25/COMP367-Lab2.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}

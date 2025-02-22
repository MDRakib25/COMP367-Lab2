pipeline {
    agent any
    tools {
        maven 'Maven 3'
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/MDRakib25/COMP367-Lab2.git'
            }
        }
    }
}
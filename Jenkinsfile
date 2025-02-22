pipeline {
    agent any
    tools {
        maven 'Maven 3'  // Ensure this matches the Maven name in Jenkins Tools
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/MDRakib25/COMP367-Lab2.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'  // Jenkins will use its installed Maven
            }
        }
    }
}

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

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Run Morning Test') {
            steps {
                script {
                    sh 'mvn jetty:run &'
                    sleep(time: 10, unit: 'SECONDS') // Wait for the server to start
                    sh 'curl http://localhost:8080/COMP367-Lab2/ > morning-greeting.txt'
                }
            }
        }

        stage('Run Afternoon Test') {
            steps {
                script {
                    sleep(time: 5, unit: 'SECONDS') // Simulating a later run
                    sh 'curl http://localhost:8080/COMP367-Lab2/ > afternoon-greeting.txt'
                }
            }
        }
    }
}

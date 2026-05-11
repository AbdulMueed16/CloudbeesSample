pipeline {
    agent any

    tools {
        // This must match the 'Name' you gave Maven in 
        // Jenkins -> Manage Jenkins -> Global Tool Configuration
        maven 'Maven 3.9.10' 
    }

    stages {
        stage('Checkout') {
            steps {
                 checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'mvn -B clean package'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Archive') {
            steps {
               archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
            }
        }
    }
     
}

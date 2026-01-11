pipeline {
    agent any

    stages {
        stage('Clone Github Repository') {
            steps {
                git branch: 'main', changelog: false, poll: false, url: 'https://github.com/dhokeakshay/Java-project-1.git'
                sh 'pwd'
            }
        }
        stage('Build') {
            steps {
                
                    sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                
                    sh 'mvn test'
            }
        }
        stage('Compile') {
            steps {
               
                    sh 'mvn compile'
            }
        }    
        stage('Docker image Build') {
            steps {
                    sh 'docker build -t java-jenkins-docker:latest .'
            }
        } 

        stage('Clean Work Space ') {
            steps {            
                    cleanWs()
            }
        }
    }
}
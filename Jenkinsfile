pipeline {

 agent any
 
Stages {

  stage('Git hub cloning') {
   steps {
   
        git branch:'main', changelog:false, poll:false, url:'https://github.com/dhokeakshay/Java-project-1.git'
	    sh 'pwd'
		
      }
	  
    }
	
  stage('Build') {
   steps {
   
        sh 'mvn clean package'
      }
	  
    }
	
  stage('unit Test') {
   steps {
   
        sh 'mvn test'
		
      }
	  
    }
  stage('java-compile') {
   steps {
   
        sh 'mvn compile'
		
      }
	  
    }
	
  stage('docker-build-image') {
   steps {
   
        sh 'docker build -t java-docker:latest .'
		
      }
	  
    }
	
  stage('cleanWorkspace') {
   steps {
   
        cleanWs()
		
      }  
	  
    } 
	
  }
  
}
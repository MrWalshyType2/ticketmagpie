pipeline {
 agent any
 tools {
  maven 'M3'
 }
  stages {   
    stage('Test') {
      steps {
        sh "mvn clean test"
      }
    }
    
    stage('Build') {
      steps {
        sh "mvn clean install"
      }
    }
    
    stage('Deploy') {
      steps {
        sh "echo 'Deploying'"
      }
    }
  }
}

pipeline {
 agent any
  stages {
    stage('Clone') {
      steps {
        git branch: "master",
            url: "https://github.com/MrWalshyType2/ticketmagpie.git"
      }
    }
   
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
pipeline {
 agent any
  stages {
    stage('Test') {
      steps {
        echo "Testing"
        mvn clean test
      }
    }
    
    stage('Build') {
      steps {
        echo "Building"
        mvn clean install
      }
    }
    
    stage('Deploy') {
      steps {
        echo "Deploying"
      }
    }
  }
}

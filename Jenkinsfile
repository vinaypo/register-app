pipeline {
  agent {label 'Jenkins-Agent'}
  tools {
    jdk 'Java17'
    maven 'Maven3'
  }
  stages {
    stage ("Clean Workspace") {
      steps {
        cleanWs()
      }
    }
    stage ("Checkout SCM"){
      steps {
        sh 'echo passed'
        git branch: 'main', url: 'https://github.com/vinaypo/register-app'
      }
    }
    stage ("Build Application") {
      steps {
        sh 'mvn clean package'
      }
    }
    stage (" Test Application") { 
      steps {
        sh 'mvn test'
      }
    }
    stage ("SonarQube Analysis") {
      steps {
        script {
            withSonarQubeEnv(credentialsId: 'sonarqube') {
              sh 'mvn sonar:sonar'
          }
        }
      }
    }
  }
}

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
    stage ("Quality Gate") {
      steps {
        script {
          waitForQualityGate abortPipeline: false, credentialsId: 'sonarqube'
        }
      }
    }
    stage ("Build and Push Docker Image") {
        environment {
        APP_NAME= "register-app-pipeline"
        DOCKER_USER= "vinay2806"
        IMAGE_NAME = "${DOCKER_USER}/${APP_NAME}"
        IMAGE_TAG = "${BUILD_NUMBER}"
        }
      steps {
        script {
          withDockerRegistry(credentialsId: 'dockerhub', url: 'https://index.docker.io/v1/') {
            def docker_image = docker.build("${IMAGE_NAME}")
            docker_image.push("${IMAGE_TAG}")
            docker_image.push("latest")
          }
        }
      }
    }
  }
}

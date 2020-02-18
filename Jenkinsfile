pipeline {
    agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }

  stages {
      stage('Checkout') {
          steps {
            git credentialsId: 'GitHubCreds', url: 'https://github.com/daniel-develeap/oracledb.git'
          }
      }
    stage('Build') {
      steps {
      sh '''cd OracleDatabase/SingleInstance/dockerfiles/
      ./buildDockerImage.sh -v 18.3.0 -e
      '''
      sh 'docker build -t daniel570/oracledb:18.3.0-ee-mig -f Dockerfile.dbmig'      
      }
    }
    
     stage('Publish') {
      steps {
          sh 'docker tag oracle/database:18.3.0-ee daniel570/oracledb:18.3.0-ee'
          withDockerRegistry(credentialsId: 'DockerHubCreds', url: 'https://index.docker.io/v1/') {
          sh 'docker push daniel570/oracledb:18.3.0-ee-mig'
        }
      }
     }
      
      stage('Deploy') {
        steps {
          sh 'cd helm-charts && helm upgrade appdb-chart appdb-chart'
        }
      }
    }
  }

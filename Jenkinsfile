pipeline{
    agent any

    stages{
        stage("Build Maven"){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/nenad0711/CI_CD-Final-Project.git']])
                bat 'mvn clean compile'
            }
        }
          stage('Test'){
                 steps{
                      bat 'mvn test'
                    }
                    post{
                        always{
                            junit '**/target/surefire-reports/TEST-*.xml'
                        }
                    }
                      }
          stage('Install'){
                 steps{
                      bat 'mvn clean install'
                        }
                         }
          stage('Build Docker Image'){
                steps{
                script{
                      bat 'docker build -t final-project .'
                      }
                      }
                      }
                          }
                           }
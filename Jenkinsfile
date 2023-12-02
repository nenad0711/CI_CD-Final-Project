pipeline{
    agent any
    tools {dockerTool 'dockerTool'}
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
                node {
                    checkout scm

                    docker.withRegistry('https://registry.hub.docker.com', 'nenad0711') {

                        def customImage = docker.build("nenad0711/my-image")

                        /* Push the container to the custom Registry */
                        customImage.push()
                    }
                }
                      //bat 'docker build -f Dockerfile -t final-project .'
                      }
                      }
                          }
                           }
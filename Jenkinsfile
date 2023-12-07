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
                 script{
                      bat 'mvn clean install'}
                        }
                         }
          stage('Build Docker Image'){
                steps{
                script{
                      bat 'docker build -f Dockerfile -t cen4802c-final .'
                      bat 'docker run -dp 3003:3003 cen4802c-final'
                      //open localhost:3003
                      //docker tag CEN4802C-Final nenad0711/CEN4802C-Final
                      //docker push nenad0711/CEN4802C-Final
                      }
                      }
                      }
                          }
                           }
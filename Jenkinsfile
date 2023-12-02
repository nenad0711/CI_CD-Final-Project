pipeline{
    agent any
   // tools{
   //     maven 'maven_3'
  //  }
    stages{
        stage("Build Maven"){

            steps{
                git 'https://github.com/nenad0711/CI_CD-Final-Project.git'
               // checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/nenad0711/CI_CD-Final-Project.git']])
                bat 'mvn clean compile'

            }

        }

    }
}
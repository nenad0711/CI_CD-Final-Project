pipeline{
    agent any
   tools{
       maven 'maven'
    }
    stages{
        stage("Build Maven"){

            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/nenad0711/CI_CD-Final-Project.git']])
                bat 'mvn clean compile'

            }

        }

    }
}
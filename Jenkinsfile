pipeline {
    agent any

    stages {
        stage('Build') {
            steps {

                git 'https://github.com/nenad0711/CI_CD-Final-Project.git'
                bat "mvn clean package"
            }
            }
    }
}
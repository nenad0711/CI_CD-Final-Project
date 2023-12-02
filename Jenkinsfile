pipeline {
    agent any

    stages {
        stage('Build') {
            steps {

                git 'https://github.com/nenad0711/final-project-sof-int.git'
                bat "mvn clean package"
            }
            }

    }
}
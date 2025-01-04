pipeline {
    agent any

    stages {
        stage('Changing file permission') {
            steps {
                sh 'chmod +x build.sh'
            }
        }
        stage('Executing script') {
            steps {
                sh './build.sh'
            }
        }
    }
}


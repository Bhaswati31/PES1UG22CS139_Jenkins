pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building hello.cpp...'
                sh 'g++ hello.cpp -o non_existent_dir/hello_exec'

            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh './hello_exec'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying application...'
            }
        }
    }
    post {
        failure {
            echo 'Pipeline failed!'
        }
    }
}

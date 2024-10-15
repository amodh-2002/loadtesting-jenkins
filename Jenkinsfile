pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                // Corrected syntax for echo command
                sh 'echo "Hello from Jenkinsfile"'
                
                // Corrected filename in the second shell command
                sh 'bzt execution.yml'
            }
        }
    }
}

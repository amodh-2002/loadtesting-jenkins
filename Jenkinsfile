// pipeline {
//     agent any

//     stages {
//         stage('Build') {
//             steps {
//                 echo "Building the projects on branch: ${env.BRANCH_NAME}"
//                 // Add your build steps here
//             }
//         }
//         stage('Test') {
//             steps {
//                 echo "Running tests on branch: ${env.BRANCH_NAME}"
//                 // Add your test steps here
//             }
//         }
//         stage('Deploy') {
//             steps {
//                 echo "Deploying the project from branch: ${env.BRANCH_NAME}"
//                 // Add your deployment steps here
//             }
//         }
//     }

//     post {
//         always {
//             echo 'Cleaning up workspace'
//             cleanWs()
//         }
//         success {
//             echo 'Pipeline completed successfully!'
//         }
//         failure {
//             echo 'Pipeline failed!'
//         }
//     }
// }

pipeline {
    agent any

    parameters {
        choice(name: 'ENVIRONMENT', choices: ['staging', 'production', 'development'], description: 'Select the environment to deploy to')
        string(name: 'VERSION', defaultValue: 'latest', description: 'Enter the version to deploy')
    }

    stages {
        stage('Build') {
            steps {
                echo "Building version: ${params.VERSION}"
                // Your build steps go here
            }
        }
        stage('Test') {
            steps {
                echo "Running tests for environment: ${params.ENVIRONMENT}"
                // Your test steps go here
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying version: ${params.VERSION} to ${params.ENVIRONMENT} environment"
                // Your deployment steps go here
            }
        }
    }
}

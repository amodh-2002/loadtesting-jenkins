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
    stages {
        stage('Build') {
            steps {
                echo 'Building project... from TRX branch'
                // Build steps here
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests... from TRX branch'
                // Test steps here
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying project... from TRX branch'
                // Deployment steps here
            }
        }
    }
}


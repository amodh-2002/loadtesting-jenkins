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

// pipeline {
//     agent any

//     parameters {
//         choice(name: 'ENVIRONMENT', choices: ['staging', 'production', 'development'], description: 'Select the environment to deploy to')
//         string(name: 'VERSION', defaultValue: 'latest', description: 'Enter the version to deploy')
//     }

//     stages {
//         stage('Build') {
//             steps {
//                 echo "Building version: ${params.VERSION}"
//                 // Your build steps go here
//             }
//         }
//         stage('Test') {
//             steps {
//                 echo "Running tests for environment: ${params.ENVIRONMENT}"
//                 // Your test steps go here
//             }
//         }
//         stage('Deploy') {
//             steps {
//                 echo "Deploying version: ${params.VERSION} to ${params.ENVIRONMENT} environment"
//                 // Your deployment steps go here
//             }
//         }
//     }
// }

// pipeline {
//     agent any
//     stages {
//         stage('Build') {
//             steps {
//                 echo 'Building project...'
//                 // Build steps here
//             }
//         }
//         stage('Test') {
//             steps {
//                 echo 'Running tests...'
//                 // Test steps here
//             }
//         }
//         stage('Deploy') {
//             steps {
//                 echo 'Deploying project...'
//                 // Deployment steps here
//             }
//         }
//     }
// }

pipeline {
    agent any

    parameters {
        string(name: 'IMAGE_TAG', defaultValue: 'latest', description: 'Tag for Docker image')
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building project...'
                // Build steps here
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // Test steps here
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    withDockerRegistry([credentialsId: 'dockerhub', url: '']) {
                        sh "docker build -t howaboutwepullsomeimages/mydockerimage:${params.IMAGE_TAG} ."
                    }
                }
            }
        }

        stage('Docker Push') {
            steps {
                script {
                    withDockerRegistry([credentialsId: 'dockerhub', url: '']) {
                        sh "docker push howaboutwepullsomeimages/mydockerimage:${params.IMAGE_TAG}"
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying project...'
                // Deployment steps here
            }
        }

        stage('Clean up') {
            steps {
                script {
                    sh "docker rmi howaboutwepullsomeimages/mydockerimage:${params.IMAGE_TAG}"
                }
            }
        }
    }

    post {
        success {
            echo 'Build and push succeeded!'
        }

        failure {
            echo 'Build or push failed!'
        }
    }
}

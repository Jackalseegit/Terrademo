pipeline {
    agent any

    stages {

        stage('Checkout Repo') {
            steps {
                git url: 'https://github.com/Jackalseegit/Terrademo.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh '''
                    cd terraform
                    terraform init
                '''
            }
        }

        stage('Terraform Validate') {
            steps {
                sh '''
                    cd terraform
                    terraform validate
                '''
            }
        }

        stage('Terraform Plan') {
            steps {
                sh '''
                    cd terraform
                    terraform plan -out=tfplan
                '''
            }
        }

        stage('Terraform Apply') {
            steps {
                sh '''
                    cd terraform
                    terraform apply -auto-approve tfplan
                '''
            }
        }

        stage('Export Outputs') {
            steps {
                sh '''
                    cd terraform
                    terraform output -json > outputs.json
                '''
            }
        }
    }

    post {
        success {
            echo "✅ Terraform infra created successfully!"
        }
        failure {
            echo "❌ Terraform pipeline failed!"
        }
    }
}

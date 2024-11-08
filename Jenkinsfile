pipeline {
    agent any 

    environment {
        PROJECT_ID = credentials('web-gcp-project')
        REGION = credentials('web-gcp-region')  
    }

    stages {
        stage('Terraform Init') {
            steps {
                script {
                    // Ejecutar terraform init
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    // Ejecutar terraform init
                    sh """
                        terraform plan \
                        -var "project_id=$PROJECT_ID" \
                        -var "region=$REGION" \
                        -var-file="terraform.tfvars"
                    """
                }
            }
        }

         stage('Approve Terraform Apply') {
            steps {
                input message: 'Do you approve the Terraform apply?', ok: 'Yes, Apply'
            }
        }

        stage('Terraform apply') {
            steps {
                script {
                    // Ejecutar terraform init
                    sh """
                        terraform apply \
                        -var "project_id=$PROJECT_ID" \
                        -var "region=$REGION" \
                        -var-file="terraform.tfvars" -auto-approve
                    """
                }
            }
        }
    }
}

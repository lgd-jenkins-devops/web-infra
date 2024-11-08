pipeline {
    agent any 

    environment {
        TF_VAR_project_id = credentials('web-gcp-project')
        TF_VAR_region = credentials('web-gcp-region')  
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
                        -var-file="terraform.tfvars" -auto-approve
                    """
                }
            }
        }
    }
}

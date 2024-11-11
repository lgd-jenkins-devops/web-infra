pipeline {
    agent any 

    environment {
        TF_VAR_project_id = credentials('web-gcp-project')
        TF_VAR_region = credentials('web-gcp-region')
        GOOGLE_APPLICATION_CREDENTIALS = credentials('gcp-jenkins-infra')
    }

    stages {
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
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
                    sh """
                        terraform apply \
                        -var-file="terraform.tfvars" -auto-approve
                    """
                }
            }
        }
    }
}

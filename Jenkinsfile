pipeline {
    agent any  // Ejecutar el pipeline en cualquier agente disponible

    stages {
        stage('Terraform Version') {
            steps {
                script {
                    // Ejecutar terraform --version para mostrar la versión de Terraform
                    sh 'terraform --version'
                }
            }
        }
    }
}

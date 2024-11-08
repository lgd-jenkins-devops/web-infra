pipeline {
    agent any  // Ejecutar el pipeline en cualquier agente disponible

    stages {
        // Paso 1: Imprimir "Hola Mundo"
        stage('Hola Mundo') {
            steps {
                script {
                    // Imprimir un mensaje en la consola
                    echo '¡Hola Mundo desde Jenkins!'
                }
            }
        }

        // Paso 2: Mostrar la versión de Terraform
        stage('Terraform Init') {
            steps {
                script {
                    // Ejecutar terraform init
                    sh 'terraform init'
                }
            }
        }
    }
}

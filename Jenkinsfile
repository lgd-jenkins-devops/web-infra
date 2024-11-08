pipeline {
    agent any  // Ejecutar el pipeline en cualquier agente disponible

    environment {
        GIT_SSH_KEY = credentials('github-key')  // Aquí el ID de las credenciales SSH configuradas
    }

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
                    // Colocar las claves SSH en el directorio adecuado para Terraform
                    sh """
                        mkdir -p ~/.ssh
                        echo "$GIT_SSH_KEY" > ~/.ssh/id_rsa
                        chmod 600 ~/.ssh/id_rsa
                    """
                    
                    // Configurar la clave del host de GitHub
                    sh 'ssh-keyscan github.com >> ~/.ssh/known_hosts'
                    
                    // Ejecutar terraform init
                    sh 'terraform init'
                }
            }
        }
    }
}

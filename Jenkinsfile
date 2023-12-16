pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Docker imajını oluştur
                sh 'docker build -t my-node-app .'
            }
        }
        stage('Test') {
            steps {
                // Docker ile Node.js uygulamasını çalıştır
                sh 'docker run -p 3000:3000 my-node-app'
                // Test adımları burada olabilir, örneğin:
                sh 'npm test'
            }
        }
        stage('Deploy') {
            steps {
                // Docker imajını dağıt
                sh 'docker push my-node-app'
                // Dağıtım adımları burada olabilir
            }
        }
    }
}

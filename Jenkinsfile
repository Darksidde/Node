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
                // Testleri çalıştır
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

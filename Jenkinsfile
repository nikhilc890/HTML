pipeline {
    agent any

    stages {
        stage('clone') {
            steps {
                git branch: 'main', url: 'https://github.com/nikhilc890/HTML'
                
            }
        }
        stage('Build'){
            steps{
                sh 'docker build -t test .'
            }
            
            
        }
        stage("deployment "){
            steps{
                
                sh 'docker tag test nikhilc890/test:1'
                sh 'docker login -u nikhilc890 -p ''
                sh'docker push nikhilc890/test:1 '
                sh 'docker compose down && docker compose up -d'
            }
            
        }
    }
}

pipeline {
    agent any

    stages {
        stage('clone') {
            steps {
                git branch: 'main', url: 'https://github.com/nikhilc890/HTML'
                
            }
        }
        stage('Build'){
            sh 'docker build -t test .'
            
        }
        stage("deployment "){
            sh 'docker tag test nikhilc890/test:1'
            sh 'docker login -u nikhilc890 -p Shree@890'
            sh'docker push nikhilc890/test:1 '
            sh 'docker compose down && docker compose up -d'
        }
    }
}

node{
    
    def app
    stage('clone'){
        git credentialsId: '18153159-a37c-4116-b4d8-19ea520cbe04', url: 'https://github.com/mamour84/jenkins.git'
    }
    stage('Build'){
        app = docker.build("mame/nginx")
    }
    stage("Run"){
        docker.image('mame/nginx').withRun('-p 80:80'){ C->
        sh 'docker ps'
        sh 'curl localhost'
            
        }
    }
}

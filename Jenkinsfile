node{
    
    def app
    stage('clone'){
        checkout scm
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

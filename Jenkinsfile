node{
    
     
    stage('Git Clone'){
        git credentialsId: 'GIT_CREDENTIALS', url:  'https://github.com/fmuhammad182/simple-java-maven-app.git',branch: 'master'
    }
    
    stage("Build"){
      def mavenHome =  tool name: "maven-3.6.1", type: "maven"
      def mavenCMD = "${mavenHome}/bin/mvn"
      sh "${mavenCMD} clean package"
      
    } 
     stage('Build Docker Image'){
        dockerImage= sh 'docker build -t fmuhammad1824/simple-java .'
    }
    
    stage('Publish DockerHub'){
        withDockerRegistry([ credentialsId: 'DOCKER_CRED', url:'https://registry.hub.docker.com']){
            sh 'docker login -u fmuhammad1824 -p techugo@1123'
            sh 'docker push fmuhammad1824/simple-java'
        }
    }
}

                            
                            
                                                   
                       
                            
                            
                            
 
     


          


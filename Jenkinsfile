node{
    /*environment {
    registry = "fmuhammad1824/simple-java"
    registryCredential = ‘DOCKER_CRED’
}*/
     
    stage('SCM Checkout'){
        git credentialsId: 'GIT_CREDENTIALS', url:  'https://github.com/fmuhammad182/simple-java-maven-app.git',branch: 'master'
    }
    
    stage(" Maven Clean Package"){
      def mavenHome =  tool name: "maven-3.6.1", type: "maven"
      def mavenCMD = "${mavenHome}/bin/mvn"
      sh "${mavenCMD} clean package"
      
    } 
     stage('Build Docker Image'){
        dockerImage= sh 'docker build -t fmuhammad1824/simple-java .'
    }
    /*stage('Deploy Image') {
  steps{    script {
      docker.withRegistry( '', registryCredential ) {
        dockerImage.push()
      }
    }
  }
}*/
     
}

          


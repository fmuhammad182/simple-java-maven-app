node{
     
    stage('SCM Checkout'){
        git credentialsId: 'GIT_CREDENTIALS', url:  'https://github.com/fmuhammad182/simple-java-maven-app.git',branch: 'master'
    }
    
    stage("Maven Build"){
         steps{
              sh "mvn clean package"
              sh "mv target/*.jar target/myweb.jar"
         }
    }   
}
    
    

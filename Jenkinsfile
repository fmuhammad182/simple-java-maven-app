pipeline{
     agent any
     stages{
         stage('SCM Checkout'){
              steps{
                   git credentialsId: 'GIT_CREDENTIALS', url:  'https://github.com/fmuhammad182/simple-java-maven-app.git',branch: 'master'
                   
              }
         }
          
          stage('Compile Stage'){
               steps{
                    withMaven(maven : 'maven-3.6.1'){
                         sh 'mvn clean compile'
                    }
               }
          }
          
                   
        
 

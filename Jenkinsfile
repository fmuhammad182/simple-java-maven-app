pipeline {
     agent any
     
     stages {
          stage ('Compile Stage') {
               
               steps {
                    withMaven(maven : 'maven-3.6.1') {
                         sh 'mvn clean package'
                    }
               }
          }
          
          stage ('Testing Stage') {
               
               steps {
                    
                    withMaven(maven : 'maven-3.6.1') {
                         sh 'mvn test'
                    }
               }
          }
          
          stage ('Deployment Stage in') {
               steps {
                    withMaven(maven : 'maven-3.6.1') {
                         sh 'mvn deploy'
                    }
               }
          }
     }
}
     


                   
        
 

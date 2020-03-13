node{
     
    stage('SCM Checkout'){
        git credentialsId: 'GIT_CREDENTIALS', url: 'https://github.com/fmuhammad182/simple-java-maven-app.git', branch: 'master'
    }
    
    stage(" Maven Clean Packages"){
      def mavenHome =  tool name: "maven-3.6.1", type: "maven"
      def mavenCMD = "${mavenHome}/bin/mvn"
      sh "${mavenCMD} clean package"
      
    } 
    
               
         


                   
        
 

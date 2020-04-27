pipeline {

   agent any

   stages {
       stage('docker-compose') {
           steps {
              sh "docker build -t my-nginx ."
              sh ""
           }
       }
   }
}

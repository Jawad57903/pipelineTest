pipeline {

   agent any

   stages {
       stage('docker-build') {
           steps {
              sh "docker build -t my-nginx-image ."
              script {
                 if (docker ps -q -f name=nginx) {
                    sh "docker container rm -f nginx"
                 }
              }
              sh "docker container run -i -d -p 80:80 --name nginx my-nginx-image"
           }
       }
   }
}

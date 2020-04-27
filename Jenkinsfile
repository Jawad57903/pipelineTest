pipeline {

   agent any

   stages {
       stage('docker-compose') {
           steps {
              sh "docker build -t my-nginx ."
              sh "docker container run -i -d -p 80:80 -v ~/mj/pipelineTest/src:/usr/share/nginx/html --name nginx my-nginx"
           }
       }
   }
}

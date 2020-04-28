pipeline {

   agent any

   stages {
       stage('docker-build') {
           steps {
              sh "docker build -t my-nginx-image ."
              sh script : '''if [ $(docker ps -aqf name=nginx) ]
                             then
                                 docker container rm -f nginx
                             fi
              '''
              sh "docker container run -i -d -p 80:80 --name nginx my-nginx-image"
           }
       }
   }
}

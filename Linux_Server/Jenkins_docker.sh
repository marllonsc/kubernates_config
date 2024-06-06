docker pull jenkins/jenkins:lts

docker run -d -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home --name jenkins jenkins/jenkins:lts

docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

#Local: http://localhost:8080
#Remote: http://<your_server_ip>:8080
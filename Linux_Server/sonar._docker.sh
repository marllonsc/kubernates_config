docker pull sonarqube

docker run -d --name sonarqube -p 9000:9000 sonarqube

docker logs -f sonarqube

#Local: http://localhost:9000
#Remote: http://<your_server_ip>:9000
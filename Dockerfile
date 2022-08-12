FROM tomcat:9-alpine
ENV http_proxy http://host.docker.internal:3128
ENV https_proxy http://host.docker.internal:3128
ADD target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]

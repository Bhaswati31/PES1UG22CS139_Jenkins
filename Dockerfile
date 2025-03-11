FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y git
EXPOSE 8080 50000

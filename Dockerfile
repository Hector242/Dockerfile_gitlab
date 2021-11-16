#Pulling the image from DockerHub. 
#this image will be the lastest.
FROM gitlab/gitlab-ee:latest
#addign some label.
LABEL description="This is a Generic image of Gitlab"
MAINTAINER Hector Sanchez
#Defining variables for the ports we are gonna use.
#Using \ to separate each environment variables. It is a best practice.
ENV PORT_HTTPS=443
ENV PORT_HTTP=80
ENV PORT_SSH=22
#expose ports
EXPOSE ${PORT_HTTPS}
EXPOSE ${PORT_HTTP}
EXPOSE ${PORT_SSH}

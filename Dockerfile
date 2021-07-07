#Pulling the image from DockerHub. 
#this image will be the lastest.
FROM gitlab/gitlab-ee:latest
#addign some label.
LABEL description="This is a custome image of Gitlab"
#Who is creating this image
MAINTAINER Hector Sanchez hectorm242@gmail.com
#Defining variables for the ports we are gonna use.
#Using \ to separate each environment variables. It is a best practice.
ENV PORT_HTTPS=443 \
    PORT_HTTP=80 \
    PORT_SSH=22

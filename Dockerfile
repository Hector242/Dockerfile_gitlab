#Pulling the image from DockerHub. 
#this image will be the lastest.
FROM gitlab/gitlab-ee:latest
#addign some label.
LABEL description="This is a Generic image of Gitlab"
#Defining variables for the ports we are gonna use.
#Using \ to separate each environment variables. It is a best practice.
ENV PORT_HTTPS=443 \
    PORT_HTTP=80 \
    PORT_SSH=22
EXPOSE ${PORT_HTTPS} \
       ${PORT_HTTP}  \
       ${PORT_SSH}
#All GitLab data will be stored as subdirectories of $GITLAB_HOME
VOLUME $GITLAB/config:/etc/gitlab \
      $GITLAB/logs:/var/log/gitlab \
      $GITLAB/data:/var/opt/gitlab 

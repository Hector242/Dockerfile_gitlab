# Dockerfile_gitlab
This is a Dockerfile that create a gitlab image. This information was taken from https://docs.gitlab.com/ee/install/docker.html.

## Before you start 
First run the script "init_setup.sh" to set up the initial configuration to install this basic image \ 
Which create the work directory and move the dockerfile to it \ 
Additionaly, it will create a path where git will use to save information /src/gitlab  \
Then run the second script "run_container.sh" to run the container.

#!/bin/bash
sudo docker build -t dockerfile_gitlab/gitlab ./workDir
sudo docker run --detach \
  --hostname gitlab.example.com \
  --publish 443:443 --publish 80:80 --publish 22:22 \
  --name gitlab \
  --restart always \
  --volume $GITLAB/config:/etc/gitlab \
  --volume $GITLAB/logs:/var/log/gitlab \
  --volume $GITLAB/data:/var/opt/gitlab \
  dockerfile_gitlab/gitlab

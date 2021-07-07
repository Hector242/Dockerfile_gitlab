#!/bin/bash
export GITLAB=/srv/gitlab
sudo docker build -t dockerfile_gitlab/gitlab01:latest .
sudo docker run --name gitlab --hostname gitlab.test.com -p 443:443 -p 80:80 -d dockerfile_gitlab/gitlab01:latest

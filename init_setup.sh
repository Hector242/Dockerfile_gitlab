#!/bin/bash
mkdir WorkDir
mv Dockerfile workDir
sudo mkdir -p /srv/gitlab/config
sudo mkdir -p /srv/gitlab/logs
sudo mkdir -p /srv/gitlab/data
export GITLAB=/srv/gitlab

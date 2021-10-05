#!/bin/bash -e
cd ~/app/

docker compose pull
docker compose up -d --remove-orphans
docker image prune

crontab /tmp/crontab

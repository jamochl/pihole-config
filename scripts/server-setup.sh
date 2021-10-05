#!/bin/bash -e

scp docker-compose.yml server:~/app/docker-compose.yml
scp crontab server:/tmp/crontab
scp pihole-setup.sh server:/tmp/pihole-setup.sh

ssh server "bash /tmp/pihole-setup.sh"

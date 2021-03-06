#!/bin/bash
sudo chown -R root
sudo docker-compose build
sudo $(aws ecr get-login --no-include-email --region us-west-2)
sudo docker tag test-ecs:latest 617272699181.dkr.ecr.us-west-2.amazonaws.com/test-ecs:latest
sudo docker push 617272699181.dkr.ecr.us-west-2.amazonaws.com/test-ecs:latest

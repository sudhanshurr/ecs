sudo docker-compose build
sudo docker-compose up
sudo $(aws ecr get-login --no-include-email --region us-west-2)
docker build -t test-ecs .
docker tag test-ecs:latest 617272699181.dkr.ecr.us-west-2.amazonaws.com/test-ecs:latest
docker push 617272699181.dkr.ecr.us-west-2.amazonaws.com/test-ecs:latest

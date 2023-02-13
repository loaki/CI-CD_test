#!bin/bash

# sudo apt-get install webhook
# webhook -hooks hooks.json -verbose

docker pull loaki/app:ci-cd_test
docker stop CICD_APP
docker system prune -f
docker run -d --name=CICD_APP loaki/app:ci-cd_test
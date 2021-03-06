#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build . --tag pgr301-pingpong --build-arg JAR_FILE=./target/travisdemo-0.0.1-SNAPSHOT.jar
docker tag pgr301-pingpong  Leifhaa/devops
docker push Leifhaa/devops

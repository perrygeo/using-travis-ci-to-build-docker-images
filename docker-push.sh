#!/bin/bash
# Lots of assumptions about ENV VARS set in travis.yml
set -e

docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS
docker tag $REPO:$COMMIT $REPO:latest
docker tag $REPO:$COMMIT $REPO:$DATE-$COMMIT
docker tag $REPO:$COMMIT $REPO:travis-$TRAVIS_BUILD_NUMBER
docker push $REPO

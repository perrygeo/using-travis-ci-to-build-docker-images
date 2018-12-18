#!/bin/bash
# Lots of assumptions about ENV VARS set in travis.yml
set -e

DATE=`date +%Y%m%d`

echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
docker tag $REPO:$COMMIT $REPO:latest
docker tag $REPO:$COMMIT $REPO:$DATE
docker tag $REPO:$COMMIT $REPO:travis-$TRAVIS_BUILD_NUMBER
docker push $REPO

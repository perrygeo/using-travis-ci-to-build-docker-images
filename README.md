# Basic example of a Docker build system

[![Build Status](https://travis-ci.com/perrygeo/using-travis-ci-to-build-docker-images.svg?branch=master)](https://travis-ci.com/perrygeo/using-travis-ci-to-build-docker-images)

Using Github, Travis, and Dockerhub, it's possible to
build a reliable continuous integration system for Docker images.
The cost can be $0 if your project is open source.

This project is a basic "Hello world" example, intended as a template. The gist:

* Create a `Dockerfile` and a command to build it
* Create a docker command to run your tests
* Sign up for Travis CI and link it to your Github account
* Add a `DOCKER_PASS` environment variable to Travis
* Make a commit containing a `.travis.yml`
* The travis job should:
    - build the image
    - test the image
    - and if the travis job is a push to master, it's considered a release
        - log into Dockerhub
        - tag the image (`latest` and `YYYMMMDD-GITSHA`)
        - push it

Check your Dockerhub repository and you should see *two* tagged images per release. See https://hub.docker.com/r/perrygeo/travis-test 

Forked from https://sebest.github.io/post/using-travis-ci-to-build-docker-images/
and ultimately went in a different direction based on recent Travis docs.


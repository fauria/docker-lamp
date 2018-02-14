#!/bin/bash
shopt -s extglob

docker build -t unixelias/lamp:${TRAVIS_BRANCH} \
                   --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
                   --build-arg BRANCHE_VCS=${TRAVIS_BRANCH} \
                   --build-arg VCS_REF=`git rev-parse --short HEAD` docker;                   

docker push unixelias/lamp:${TRAVIS_BRANCH};

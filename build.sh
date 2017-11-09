#!/bin/bash
shopt -s extglob

for i in $( ls docker); do
  case "$i" in
    *-test )  ;;
      * ) docker build -t unixelias/lamp:$i \
        --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
        --build-arg VCS_REF=`git rev-parse --short HEAD` docker/$i \
        && docker push unixelias/lamp:$i ;;
  esac
done
docker tag unixelias/lamp:16.04 unixelias/lamp:latest && docker push unixelias/lamp:latest

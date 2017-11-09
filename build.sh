#!/bin/bash
shopt -s extglob

for i in $( ls docker); do
      *-test )  ;;
      * ) docker build -t unixelias/lamp:$i \
          --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
          --build-arg VCS_REF=`git rev-parse --short HEAD` docker/lamp-$i \
          && docker push unixelias/lamp:$i ;;
  fi
done
docker tag unixelias/lamp:16.10 unixelias/lamp:latest && docker push unixelias/lamp:latest

#!/bin/bash

for i in $( ls docker); do
  case "$i" in
       *-test )  ;;
       * ) echo Dockerfile: $i ; docker run -it --rm --privileged -v `pwd`:/root/ projectatomic/dockerfile-lint dockerfile_lint -f /root/docker/$i/Dockerfile -r lint/default_rules.yaml ;;
  esac
done

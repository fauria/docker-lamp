#!/bin/bash

echo Dockerfile: $i ;
docker run -it --rm --privileged -v `pwd`:/root/ projectatomic/dockerfile-lint dockerfile_lint -f /root/docker/Dockerfile -r lint/default_rules.yaml;

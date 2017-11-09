#!/bin/bash
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/unixelias/docker-lamp/trigger/$TRIGGER_TOKEN/

#curl -X POST https://hooks.microbadger.com/images/unixelias/docker-dspace/7MabK8-C8jm0uLCeo4vaogIXyuo=

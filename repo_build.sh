#!/bin/bash
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/unixelias/docker-lamp/trigger/$TRIGGER_TOKEN/

curl -X POST https://hooks.microbadger.com/images/unixelias/lamp/Hv1mE-Tpdgl8FA3l-cTr2fpQ_3c=

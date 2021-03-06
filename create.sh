#!/bin/sh

set -e

export DATE=2020-08-312

TAG="alexellis2/alexellisio:$DATE"

docker pull $TAG

docker rm -f alexellisio

docker run --name alexellisio \
 -p 3000:3000 \
 --restart=always \
 -d ${TAG}

#! /bin/bash

docker buildx build . --push \
  -f Dockerfile.buildx \
  --platform linux/amd64,linux/arm64 \
  --target multi-stage \
	-t jingsam/pg_tileserv:latest
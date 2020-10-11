#!/usr/bin/env bash
PUSH="false"
if [ "${1}" == "--push" ]; then
  PUSH="true"
fi

DEV_TAG="jmelahman/dev:latest"
docker build -t "${DEV_TAG}" .
if [ "${PUSH}" == "true" ]; then
  docker push "${DEV_TAG}"
fi

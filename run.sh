#! /bin/bash

cd rathena/tools/docker
docker compose down
docker compose up -d db map login char
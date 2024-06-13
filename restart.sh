#! /bin/bash

cd rathena/tools/docker
docker compose down
docker compose up -d db
cd ../../
./athena-start stop
./athena-start start --enlog
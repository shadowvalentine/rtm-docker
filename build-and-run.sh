#! /bin/bash

cd rathena/tools/docker
docker compose down
docker compose up -d db
cd ../../
sudo ./configure
sudo make clean server
./athena-start stop
./athena-start start --enlog
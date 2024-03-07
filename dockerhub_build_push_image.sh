#!/bin/bash

# Melakukan build menggunakan Dockerfile
docker build -t item-app:v1 .

# Cek daftar docker images yang tersedia
docker images

# Push docker images ke Docker Hub
cat ../pass.txt | docker login --username kixanax13 --password-stdin
docker tag item-app:v1 kixanax13/item-app:v1
docker push kixanax13/item-app:v1
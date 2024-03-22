#!/bin/bash
# Melakukan build menjadi docker image
docker build -t shipping-service:v1 .
# Cek daftar docker images yang tersedia
docker images
# Mengubah nama image sesuai dengan format Github Packages
docker tag item-app:v1 ghcr.io/bancarafarros/shipping-service:v1
# Login ke GitHub Packages via Terminal
cat ../pass.txt | docker login ghcr.io --username bancarafarros --password-stdin
# Upload image ke Github Packages
docker push ghcr.io/bancarafarros/shipping-service:v1
#!/bin/bash

# Melakukan build menjadi docker image
docker build -t karsajobs-ui:latest .

# Cek daftar docker images yang tersedia
docker images

# Mengubah nama image sesuai dengan format Github Packages
docker tag karsajobs-ui:latest ghcr.io/bancarafarros/karsajobs-ui:latest

# Login ke GitHub Packages via terminal
cat ../pass.txt | docker login ghcr.io --username bancarafarros --password-stdin

# Upload image ke Github Packages
docker push ghcr.io/bancarafarros/karsajobs-ui:latest

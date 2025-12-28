#!/bin/bash
# Pull latest backend code from master
git pull origin main

# Go to local compose folder
cd ../compose

# Build and start backend container
docker compose build backend
docker compose up -d backend

#!/bin/bash

git pull origin main

# Go to local docker-compose folder
cd ../compose

# Build backend container
docker compose build backend

# Restart backend
docker compose up -d backend

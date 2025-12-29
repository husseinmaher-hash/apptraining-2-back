#!/bin/sh

# Exit immediately if a command fails
set -e

# Navigate to backend root (where docker-compose.yml is)
cd "$(dirname "$0")/.."  # assumes script is in scripts/ and docker-compose.yml is in backend root

echo "Stopping any existing backend containers..."
docker compose down

echo "Building and starting backend containers..."
docker compose up --build -d

echo "Backend deployment finished!"

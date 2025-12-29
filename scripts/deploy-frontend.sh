#!/bin/sh

# Exit immediately if a command fails
set -e

# Navigate to the repo root (adjust if needed)
cd "$(dirname "$0")/.."

echo "Stopping any existing containers..."
docker compose down

echo "Building and starting containers..."
docker compose up --build -d

echo "Deployment finished!"

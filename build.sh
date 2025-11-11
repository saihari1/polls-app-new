#!/bin/bash
set -e

echo "=== Cloning GitHub repo ==="
git clone https://github.com/saihari1/polls-app-new.git

echo "=== Moving into backend project ==="
cd polls-app-new/polling-app-server

echo "=== Installing Maven ==="
apt-get update -y
apt-get install -y maven

echo "=== Building the project ==="
# If you have a bash build script:
# chmod +x build.sh && ./build.sh

# Or just run Maven directly:
mvn clean install -DskipTests

echo "=== Build completed successfully ==="

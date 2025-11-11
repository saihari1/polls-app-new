#!/bin/bash
set -e

echo "=== Moving into backend project ==="
cd polls-app-new/polling-app-server

echo "=== Building the project ==="
# If you have a bash build script:
# chmod +x build.sh && ./build.sh

# Or just run Maven directly:
mvn clean install 

echo "=== Build completed successfully ==="

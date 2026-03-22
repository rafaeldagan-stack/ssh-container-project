#!/bin/bash

echo "Building and starting SSH container..."

docker compose up -d --build

echo "Done!"
echo "Connect using:"
echo "ssh devops@localhost -p 2222"
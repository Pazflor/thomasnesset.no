#!/bin/bash

# Build script for Hugo site
# Usage: ./scripts/build.sh [environment]

ENVIRONMENT=${1:-development}

echo "Building Hugo site for $ENVIRONMENT environment..."

case $ENVIRONMENT in
  "production")
    echo "Building for production..."
    hugo --minify --environment production
    ;;
  "staging")
    echo "Building for staging..."
    hugo --minify --environment staging
    ;;
  *)
    echo "Building for development..."
    hugo --buildDrafts --buildFuture
    ;;
esac

echo "Build completed!"

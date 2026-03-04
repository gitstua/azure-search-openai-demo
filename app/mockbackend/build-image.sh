#!/bin/sh

set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
REPO_ROOT=$(CDPATH= cd -- "$SCRIPT_DIR/../.." && pwd)

IMAGE_TAG="${1:-mockbackend:local}"

echo "Building Docker image: $IMAGE_TAG"
docker build \
    -f "$REPO_ROOT/app/mockbackend/Dockerfile" \
    -t "$IMAGE_TAG" \
    "$REPO_ROOT"

echo ""
echo "Built image: $IMAGE_TAG"
echo "Run it with:"
echo "  docker run --rm -p 50505:50505 $IMAGE_TAG"

#!/usr/bin/env bash
set -e

# Usage check
if [ -z "$1" ]; then
  echo "❌ Usage: $0 <version>"
  echo "Example: $0 0.0.2"
  exit 1
fi

VERSION="$1"
TAG="v${VERSION}"

echo "🏷️  Creating git tag ${TAG} ..."

# Create annotated tag
git tag -a "${TAG}" -m "Release Windows version ${TAG}"

# Push the tag to GitHub
git push origin "${TAG}"

echo "✅ Tag ${TAG} pushed successfully!"

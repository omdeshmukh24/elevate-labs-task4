#!/bin/bash

# Usage: ./tag_release.sh v1.0.0

if [ -z "$1" ]; then
  echo "Usage: $0 <tag>"
  exit 1
fi

git tag -a "$1" -m "Release $1"
git push origin "$1"
echo "Tagged and pushed $1"

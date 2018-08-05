#!/usr/bin/env bash
# Exit on failure
set -e

echo "TRAVIS_BRANCH: ${TRAVIS_BRANCH}"
echo "TRAVIS_COMMIT: ${TRAVIS_COMMIT}"
echo "TRAVIS_PULL_REQUEST: ${TRAVIS_PULL_REQUEST}"
echo "TRAVIS_TAG: ${TRAVIS_TAG}"
echo "TRAVIS_TAG:1 ${TRAVIS_TAG:1}"

#!/usr/bin/env bash
# Exit on failure
set -e

REPO=npetzall

function build() {
    echo "Building docker image"
}

function deploy() {
    echo "Deploying snapshot"
    if [[ ${TRAVIS_TAG} =~ ^v[0-9]+\.[0-9]+\.[0-9]+.*$ ]]; then
        echo "Deploying release ${TRAVIS_TAG:1}"
        echo "Deploying latest"
    fi
}

if [[ "${TRAVIS_PULL_REQUEST}" == "false" ]]; then
    case "$1" in
        build)
            build
            ;;
        deploy)
            deploy
            ;;
        *)
            echo "Bad argument: $1"
            exit 1
    esac
else
    echo "Skipping $1"
fi

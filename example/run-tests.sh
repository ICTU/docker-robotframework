#!/bin/bash

TESTS_FOLDER=${TESTS_FOLDER:-./tests}
RESULTS_FOLDER=${RESULTS_FOLDER:-./results}
BROWSER=${BROWSER:-chrome}

mkdir -p $RESULTS_FOLDER

function cleanup {
  docker-compose down
}

trap cleanup EXIT

# Build image
RUNTIME_UID=$(id -u) docker-compose build --no-cache --force-rm

# Start tests
echo "Executing tests from $TESTS_FOLDER. Storing results in $RESULTS_FOLDER."
TESTS_FOLDER=$TESTS_FOLDER RESULTS_FOLDER=$RESULTS_FOLDER docker-compose up --exit-code-from art


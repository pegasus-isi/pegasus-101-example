#!/bin/bash

set -e

if [ $# -ne 2 ]; then
    echo "Usage: $0 <mutation-prefix> <count-file>"
    exit 1
fi

MUTATION_FILE_PREFIX=$1
COUNT_FILE=$2

wc -l ${MUTATION_FILE_PREFIX}-*csv | tail -1 | awk '{print $1}' > $COUNT_FILE

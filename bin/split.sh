#!/bin/bash

set -e

if [ $# -ne 1 ]; then
    echo "Usage: $0 <output-prefix>"
    exit 1
fi

if [ "${SPLIT_INPUT_FILE}" == ""  ]; then
    echo "Required environment variable SPLIT_INPUT_FILE is not set"
    exit 1
fi

OUTPUT_PREFIX="$1"

for i in `seq 24`; do
    cut -d',' -f${i} "${SPLIT_INPUT_FILE}" > ${OUTPUT_PREFIX}-${i}.csv
done

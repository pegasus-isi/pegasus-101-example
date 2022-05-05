#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <dna-file> <count-file>"
    exit 1
fi

DNA_FILE=$1
COUNT_FILE=$2

export SPLIT_INPUT_FILE=${DNA_FILE}
# Splits the file into chromosomes. Input is consumed through env variable SPLIT_INPUT_FILE
bin/split.sh chr

for i in `seq 24`; do
    # record-mutations.sh is in the Docker image pegasus/101-example in /srv directory.
    bin/record-mutations.sh chr-$i.csv mutation-$i.csv &
done
wait

# Requires 4 cores, 2 GB memory.
bin/count.sh mutation ${COUNT_FILE}

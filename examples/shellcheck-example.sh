#!/usr/bin/env bash

set -euo pipefail

for filename in `ls *.sh`;
do
echo $filename
done


for filename in $(ls *.sh);
do
echo $filename
done

for filename in ./*.sh; do
    echo "$filename"
done

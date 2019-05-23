#!/usr/bin/env bash

FILE="./docker-compose.yml"

for d in */
do
    echo "accessing ${d}"
    cd "${d}" || exit 1
    if [[ -f "$FILE" ]]
    then
        docker-compose build
    fi
    cd ..

done

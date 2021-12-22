#!/bin/bash

source src/contracts.cfg

ACCOUNT="ACCOUNT HERE"

if [[ ! $# == 3  ]]; then 
    echo "This program takes 3 inputs: a row, a col, and an RBG color"
    echo "Exiting..."
    exit 2
fi

# Contract Number = ((row - 1) // 5) + 1
id=$(( (($1 - 1) / 5 ) + 1 ))
id=${CONTRACT_IDS[$(( $id - 1 ))]}
echo "Contract ID: $id"

goal app call --from=$ACCOUNT --app-id=$id --app-arg="int:$1" --app-arg="int:$2" --app-arg="str:$3"

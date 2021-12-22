#!/bin/bash

source src/contracts.cfg
source src/rows.cfg

if [[ ! $# == 2  ]]; then 
    echo "This program takes 2 inputs: a row and a col"
    echo "Exiting..."
    exit 2
fi

# Contract Number = ((row - 1) // 5) + 1
id=$(( (($1 - 1) / 5 ) + 1 ))
id=${CONTRACT_IDS[$(( $id - 1 ))]}
#echo "Contract ID: $id"

# Cell Number = (((row - 1) % 5) * 10) + (((col - 1) // 10) + 1) 
cell=$(( ((($1 - 1) % 5) * 10) + ((($2 - 1) / 10) + 1)  ))
cell=${CELL_IDS[$(( $cell - 1 ))]}
#echo "Contract Cell: $cell"

# Pixel Number = ((col - 1) % 10) + 1
pixel=$(( (($2 - 1) % 10) + 1 ))
#echo "Pixel Number: $pixel"

# Pixel Interval = [(p - 1) * 6, ((p - 1) * 6) + 6]
lpix=$(( ($pixel - 1) * 6 ))
rpix=$(( (($pixel - 1) * 6) + 6 ))
#echo "Pixel Interval: [$lpix, $rpix]"

data=$(goal app read --app-id=$id --global | jq ".[\"$cell\"].\"tb\"" | sed 's/\"//g') 
echo "${data:lpix:6}" 

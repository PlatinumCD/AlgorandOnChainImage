#!/bin/bash

source src/contracts.cfg

imgArr=""

for ID in ${CONTRACT_IDS[*]}
  do
    data=$(goal app read --app-id=$ID --global | jq ".[] | .[\"tb\"]" | sed 's/\"//g')
    imgArr+=$data
  done

echo $imgArr | python3 src/generate_img.py 

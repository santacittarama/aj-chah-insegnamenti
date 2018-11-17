#!/bin/bash

rg '\\emph[{]' ./manuscript/tex |\
    sed 's/\\emph/\n&/g' |\
    grep -E '^\\emph' |\
    sed -e 's/\\emph[{]\([^}]\+\)[}].*/\1/; s/[\.,]$//;' |\
    tr 'A-ZĀÑ' 'a-zāñ' |\
    grep -E '.' |\
    grep -vf ./helpers/not-pali.txt |\
    sort | uniq > pali.txt


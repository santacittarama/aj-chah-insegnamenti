#!/bin/bash

for i in ./manuscript/tex/*.tex; do
    name=$(basename "$i")
    if [ "$name" == "titlepage.tex" -o \
	"$name" == "copyright.tex" -o \
	"$name" == "copyright-details.tex" -o \
	"$name" == "dedication.tex" ]
    then
	continue
    fi
    ./helpers/tex_to_asciidoc.sh "$i"
done


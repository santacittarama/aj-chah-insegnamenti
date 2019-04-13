#!/bin/bash

for i in ./manuscript/tex/*.tex; do
    if [ $(basename "$i") == "titlepage.tex" -o \
	$(basename "$i") == "copyright.tex" -o \
	$(basename "$i") == "copyright-details.tex" -o \
	$(basename "$i") == "dedication.tex" ]
    then
	continue
    fi
    ./helpers/tex_to_asciidoc.sh "$i"
done


#!/bin/bash

export URL=https://www.lipsum.com/
export word=$1
curl -k $URL -o download.txt 2> /dev/null
lines=$(grep "$word" download.txt | wc -l)

if (( lines == 0 )); then
	echo "No se ha encontrado \"$word\""
else
	echo "La palabra \"$word\" aparece $lines veces"
	line_num=$(grep -n "$word" download.txt | head -n 1 | cut -d: -f1)
	echo "Aparece por primera vez en la línea $line_num"
fi

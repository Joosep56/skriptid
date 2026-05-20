#! /usr/bin/bash

# varrays.sh

names=("Anna" "Maali" "Jüri") # Massiiiv 3 elementi

echo "Esimene nimi: ${names[0]}"
echo

for name in "${names[@]}"; do
    echo "$name"
done


# Tagurpidi
for((x=${#names[@]}-1; x>=0; x--)); do
    echo "${names[x]}"
done   

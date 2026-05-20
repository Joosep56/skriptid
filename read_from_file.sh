#!/usr/bin/bash

file_name="$1"

if [ -f "$file_name" ]; then
    #echo "Fail olemas"
    extentsions=()
    while IFS='' read -r line;do
        if [ ! -z "$line" ]; then
            extentsions+=("$line")
        fi
    
    done < "$file_name"

    echo "Laiendeid kokku: ${#extentsions[@]}"

    # väljasta kõik laiendid ühel real kujul: png, txt, jpg
    IFS=', ' 
    echo "${extentsions[*]}"


# sep=""
# for ext in "${extentsions[@]}"; do
# printf "%$%$" "$sep" "$ext"
# sep=", "

#ülesanne väljasta üls juhuslik laiend massiivist extentsions

    random_index=$((RANDOM % ${#extentsions[@]}))
    echo "Juhuslik laiend: ${extentsions[$random_index]}"

#ülesanne: Täienda skripti nii, et kui argumenti pole öeldakse: failinimi.sh extentsions.txt ehk umbes read_from_file.sh
#kasuta ./read.from.file.sh extentsions.txt
else
    echo "Kasuta: $0 extentsions.txt"
fi
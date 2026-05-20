#!/usr/bin/bash


# Tee uus skript nimega task_01.sh. Argumente käsureal ei ole!
# Loe laiendite faili (failinimi on skriptis, mitte käsureal)
# Faili olemasolu tuleb kontrollida!
# Võta üks juhuslik laiend failist ja lisa uude faili nimega random.txt
# Iga kord kui skript käivitatakse lisatakse faili üks uus laiend uuele reale
# Käivitades näiteks skripti 100 korda, siis random.txt failist on 100 rida ja suvailsed laiendid (jah neid on seal kordvaid)
# Kui skript töötab, proovi käsurealt käivitda skripti 100 korda  (automaatselt)


#file_name="extentsions.txt"
#extensions=()
#    while IFS= read -r line; do
#     extensions+=("$line")
#done < "$file_name"

#random_index=$((RANDOM % ${#extensions[@]}))
#random_extension="${extensions[$random_index]}"

#echo "$random_extension" >> random.txt


SRC="extentsions.txt"
DEST="random.txt"

if [ -f "$SRC" ]; then
    ext=$(shuf -n 1 "$SRC")
    echo "$ext" >> "$DEST"
fi


for x in {1..100}; do ./task_01.sh; done
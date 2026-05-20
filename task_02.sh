#!/usr/bin/bash

#Skript loeb käsurealt laiendi ja loeb kokku eelmise ülesande tulemu failist random.txt
#kõik need laiendid ninh näitab tulemuse konsooli.
# Vastuseks ütleb laiendi mida otsiti ja koguse. Kui ei leitud, siis
# ütleb, et antud laiendit ei leitud.

COUNT=0

while read rida; do
    if [ "$rida" = "${1#.}" ]; then
        COUNT=$((COUNT + 1))
    fi
done < random.txt

if [ "$COUNT" -gt 0 ]; then
    echo "Laiend '.${1#.}': leitud ${COUNT} korda."
else
    echo "Laiendit '.${1#.}' ei leitud."

fi  


# ext="$1"
# SRC="random.txt"

# if [ -z "$EXT" ]; then
    #echo "Kasutus: $0 <laiend>"
    #exit 1
    #fi

# total=$(grep -c "$EXT" "$SRC")
# if [ "$total" -eq 0 ]; then
 #echo "laiendit $EXT ei leitud"
 #else
    #echo "laiendit----"
#fi ex
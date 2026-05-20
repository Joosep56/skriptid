#!/usr/bin/bash

# Puhasta ekraan
clear

echo  "Bash versioon: ${BASH_VERSION}"


# Värvid
RED='\033[0;31m' # Punane
BLUE='\033[1;34m' # Sinine rasvane
NC='\033[0m' # No Color

echo -e "Tere tulemast ${RED}Bash Shell${NC} maailma!"
echo -e "Teadmistes ${BLUE} on jõud${NC}!"


# Küsime nii kaua kui saame õige vastuse 
while true; do
    read -r -p "Kas jätkame skripti jooksutamist? [j/e] " result
    case $result in
        [Jj]* ) echo "Sooviti jätkata"; break;;
        [Ee]* ) echo "Ei soovitud jätkata. Lõpetame"; exit;;
        * ) echo "Vali J või E";;
    esac 
done

echo -e "${BLUE}Jätkame skripti tööd${NC}."


# Tavaline for-loop
for((x=1; x<11; x++)); do
    echo -e "Tere ${RED}$x${NC}, korda"
done


# Ootame kasutaja Enter klahvivajutust
read -r -n 1 -s -p "Jätkamiseks vajuta Enter.."
echo #reavahetus

# Mitte tavaline 
for x in {0..10}
do  
    echo -e "Tere ${RED}$x${NC}. Korda. Imelik variant!"
done

echo
# Paari kaupa

for x in {0..10..2}; do
    echo -e "Paari kaupa suurendamine ${BLUE}$x${NC}"
done

echo
# While-loop 10..0
x=10
while [ $x -gt 0 ]; do
    echo $x
    x=$((x - 1))
done    
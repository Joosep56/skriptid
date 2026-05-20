#! /usr/bin/bash

# game.sh

# Arva ära number vahemiks 1-100. Tagauks on 1000
# Ülesanne mängu lõppedes küsi kasutajalt kas mängida veel. Jah puhul
# resti andmed ja alsuta uuesti 


# Arvuti mõeldud number
pc_nr=$((RANDOM % (100 - 1 + 1) + 1))

# Test
echo "$pc_nr"

user_nr=0

# Mitu sammu äraarvamiseks
counter=0

# Kas mäng on läbi
game_over=false

ask() {
    read -r -p "Sisesta number " user_nr
    counter=$((counter+1))

    if [ "$user_nr" -gt "$pc_nr" ] && [ "$user_nr" -ne 1000 ]; then
        echo "Väiksem"
    elif [ "$user_nr" -lt "$pc_nr" ] && [ "$user_nr" -ne 1000 ]; then
        echo "Suurem"
    elif [ "$user_nr" -eq "$pc_nr" ] && [ "$user_nr" -ne 1000 ]; then
        echo "Õige vastus"
        game_over=$true
    elif [ "$user_nr" -eq 1000 ]; then
        echo "Leidsid tagaukse. Number on $pc_nr"
    fi
}

lets_play() {
    while [ "${game_over}" ]; do
        ask
    done
    # Mäng läbi
    echo "Arvasid ära $counter korraga!"
    play_again
}
    
play_again() {
    read -r -p "Kas soovid uuesti mängida? (jah/ei): " response
    case "$response" in
        [Jj][Aa][Hh])
            pc_nr=$((RANDOM % (100-1 + 1) + 1))
            game_over=false
            counter=0
            lets_play;;
        *) echo "Mäng läbi";;
    esac
    }

lets_play



#!/bin/bash

function pow() {
a=$1
b=$2
p=$(( "$a" ** "$b" ))
echo $p
}

function shortest() {
read -ra wordarray <<< "$@"
minlength=${#wordarray[0]}
# first, we need lenght of shortest argument
for l in "${wordarray[@]}"
do
if [[ "${#l}" -lt "$minlength" ]]; then
        minlength="${#l}"
    fi
done
# and output all arguments with shortest length 
for i in "${wordarray[@]}"
do
if [[ "${#i}" -eq "$minlength" ]]; then
        echo "$i"
    fi
done
}

function print_log() {
mesg=$*
echo "[$(date '+%Y-%m-%d %H:%M')]"" $mesg"
}

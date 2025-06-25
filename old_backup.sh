#!/bin/bash

if [[ $# -ne 2 ]];
then
    printf "Provide 2 parameters\nbackup.sh {ORIGINAL_PATH} {NEW_PATH}\n"
    exit 0
fi

if [[ -e $1 || -d $1 ]];
then
    cp -rv "$1" "$2"
else
    echo "Original file or directory does not exist"
    exit 0
fi
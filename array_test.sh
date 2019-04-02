#!/bin/bash
declare -a arr
count=0
read -p "Enter a new word: " reply
while [ $reply  != "quit" ]
do
    if [ $reply = "list" ]
    then
        for i in "${arr[*]}";
        do
            echo "$i ";
        done
    else
        arr[$count]=$reply
        let count=$count+1
        echo "Length: $count"
    fi
    read -p "Enter a new word: " reply
done


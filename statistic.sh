#!/bin/bash

if [ ! -n "$1" ]
then
    echo "Usage ./statistics filepath [keywords]"
    exit 0
fi

KEY_WORD=""
if [ -n $2 ]
then
    KEY_WORD=$2
fi

awk 'BEGIN{}
{
    if ("'$KEY_WORD'" == "") {
        if($6 == "\"POST" || $6 == "\"GET") {
            urls[$7]++
        }
    } else {
        if(($6 == "\"POST" || $6 == "\"GET") && $7 == "'$KEY_WORD'") {
            urls[$7]++
        }
    }
}
END{
    for (i in urls) {
        print i, urls[i]
    }
}' $1 | sort -k 2rn



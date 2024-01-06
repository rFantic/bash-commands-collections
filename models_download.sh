#!/bin/sh
find $1 -type f -print0 | while IFS= read -r -d '' file
do 
    ext="${file##*.}"
    name="${file%.*}"
    if [[ "$ext" == "download" ]];
    then
        url=$(cat $file);
        wget $url -c -q --show-progress -O $name
    fi
done

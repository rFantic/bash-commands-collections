#!/bin/sh
link="https://drive.horusvn.com/s/tr86DpGyppKe8wk"
find $1 -type f -print0 | while IFS= read -r -d '' file
do 
    ext="${file##*.}"
    path="${file#*/*/}"
    case "$ext" in
        "pth"|"gz"|"onnx")
        new="$link""/download?path=""${path//\//%2F}"
        echo "$new" > "$file"".download"
        ;;
    esac
done

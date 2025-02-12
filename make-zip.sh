#!/usr/bin/env bash
# Create a zip file from wallpapers

if ! command -v zip &> /dev/null
then
    echo "make-zip.sh: No zip program found."
    exit 1
fi

OLD_DIR=`pwd`
NEW_DIR=$(dirname "$0")
echo "make-zip.sh: NEW_DIR=$NEW_DIR"

cd "$NEW_DIR"

OUTPUT_DIR=$NEW_DIR/output
ZIP_FILE=$OUTPUT_DIR/wallpapers.zip
echo "make-zip.sh: OUTPUT_DIR=$OUTPUT_DIR"
echo "make-zip.sh: ZIP_FILE=$ZIP_FILE"

if [ ! -d "$OUTPUT_DIR" ]; then
    mkdir "$OUTPUT_DIR"
fi

if [ -f "$ZIP_FILE" ]; then
    rm "$ZIP_FILE"
fi

WALLPAPERS_LIST=`ls **{,/**}/*.{jpg,png,tif,gif,bmp} 2> /dev/null`

# File size check
for file in $WALLPAPERS_LIST; do
    file_size=`wc -c "$file" | cut -d' ' -f1`
    let KB="$file_size / 1024"
    if [ $KB -gt 800 ]; then
        let MB="$KB / 1024"
        if [ $MB -gt 1 ]; then
            echo "make-zip.sh: WARNING: $file : $MB MB"
        else
            echo "make-zip.sh: WARNING: $file : $KB KB"
        fi
    fi
done

cp -f README.md /tmp/README.txt

zip -j -q "$ZIP_FILE" $WALLPAPERS_LIST /tmp/README.txt LICENSE.txt

if [ "$?" -eq "0" ] && [ -f "$ZIP_FILE" ]; then
    file_size=`wc -c "$ZIP_FILE" | cut -d' ' -f1`
    let KB="$file_size / 1024"
    let MB="$KB / 1024"
    if [ $MB -gt 1 ]; then
        echo "make-zip.sh: Generated $ZIP_FILE ($MB MB)"
    else
        echo "make-zip.sh: Generated $ZIP_FILE ($KB KB)"
    fi
fi

rm /tmp/README.txt

cd "$OLD_DIR"

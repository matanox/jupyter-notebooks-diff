#!/bin/bash

if [ $# -ne 2 ]; then
    echo usage: notebooks-diff \<notebook1\> \<notebook2\>
    exit 1
fi

tempdir=`mktemp -d 2>/dev/null || mktemp -t -d 'mytmpdir'` # credit: https://unix.stackexchange.com/a/84980/45821
echo "using tmp directory $tempdir"

jupyter nbconvert --to script "$1" --no-prompt --output-dir=$tempdir
jupyter nbconvert --to script "$2" --no-prompt --output-dir=$tempdir

py1=`basename "$tempdir"/"$1" .ipynb`
py1="$tempdir"/"$py1".py

py2=`basename "$tempdir"/"$2" .ipynb`
py2="$tempdir"/"$py2".py

sed -i '/#.*/d' "$py1" # on mac users, add '' after -i
sed -i '/#.*/d' "$py2"

sed -i '/^$/d'  "$py1"
sed -i '/^$/d'  "$py2"

colordiff "$py1" "$py2"

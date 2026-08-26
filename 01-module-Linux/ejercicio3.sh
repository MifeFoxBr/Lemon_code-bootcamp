#!/bin/bash

mkdir -p foo/dummy
mkdir -p foo/empty

msg=$1

if [ -z "$msg" ]; then
    msg="Que me gusta la bash!!!!"
fi

echo $msg > foo/dummy/file1.txt
touch foo/dummy/file2.txt
cd foo/dummy
cat file1.txt >> file2.txt
mv file2.txt ../empty

#!/bin/bash
file="./dev/package.json.bk"
if [ -f "$file" ]
then
 cd dev && mv package.json.bk package.json && npm run dev
else
 cd dev && npm run dev
fi
#!/bin/bash
file="./dev/package.json"
if [ -f "$file" ]
then
 cd dev && npm run dist && mv package.json package.json.bk
else
 cd dev && package.json.bk package.json && npm run dist && mv package.json package.json.bk
fi
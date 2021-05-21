#!/bin/bash

# generate a site 
mkdir temp
python3 -m mkdocs build -d temp

# upload
cd ext/tuppi-ovh.github.io
git pull
cp -rf ../../temp/* .
git add .
git commit -m "update site"
git push

# clean up & exit
rm -rf ../../temp
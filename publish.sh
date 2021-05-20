#!/bin/bash

# virtual env
source venv/bin/activate

# prepare sub projects
git clone https://github.com/tuppi-ovh/data-server-pi.git github/data-server-pi
git clone https://github.com/tuppi-ovh/data-server-stm32.git github/data-server-stm32
git clone https://github.com/tuppi-ovh/data-server-vmc.git github/data-server-vmc
git clone https://github.com/tuppi-ovh/tuppi-ovh.github.io.git github/tuppi-ovh.github.io

# generate a site 
mkdir temp
python3 -m mkdocs build -d temp

# upload
cd github/tuppi-ovh.github.io
git pull
cp -rf ../../temp/* .
git add .
git commit -m "update site"
git push

# clean up & exit
rm -rf ../../temp
rm -rf github/*
deactivate
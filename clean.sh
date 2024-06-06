#!/bin/bash

cd ./dfkernel
git fetch origin
git reset --hard origin/main
cd ../dfnotebook-extension
python clean.py
git fetch origin
git reset --hard origin/main

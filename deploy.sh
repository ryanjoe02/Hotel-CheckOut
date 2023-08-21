#!/bin/bash

echo "Start git pull"
git pull

echo "Start to make venv and activate"
python3 -m venv venv
source venv/bin/activate

echo "Install requirements"
pip install --upgrade pip
pip install -r requirements.txt

echo "find every sh file to grent premission"
find . -name "*.sh" -exec chmod +x {} \;

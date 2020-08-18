#!/bin/bash
#uses 7zip as 'zip'
mkdir -p cropro
cp cropro.py manifest.json cropro
echo "from . import cropro" > cropro/__init__.py
rm -f cropro.ankiaddon
cd cropro && zip a ..\\cropro.zip *
mv ..\\cropro.zip ..\\cropro.ankiaddon

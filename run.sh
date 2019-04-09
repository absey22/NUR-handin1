#!/bin/bash


echo "Creating the plotting directory if it does not exist"
if [ ! -d "plots" ]; then
  echo "Directory does not exist create it!"
  mkdir plots
fi

echo "get data files"

wget https://home.strw.leidenuniv.nl/~daalen/files/satgals_m11.txt
wget https://home.strw.leidenuniv.nl/~daalen/files/satgals_m12.txt
wget https://home.strw.leidenuniv.nl/~daalen/files/satgals_m13.txt
wget https://home.strw.leidenuniv.nl/~daalen/files/satgals_m14.txt
wget https://home.strw.leidenuniv.nl/~daalen/files/satgals_m15.txt

# Script that returns a plot
echo "Run the first script ..."
python3 ex1.py > ex1output.txt

# Script that pipes output to a file
echo "Run the second script ..."
python3 ex2.py > ex2output.txt

# Script that saves data to a file
echo "Run the third script ..."
python3 ex3.py > ex3output.txt

echo "Generating the pdf"

pdflatex template.tex





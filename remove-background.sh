#!/bin/bash

echo "Criando pasta temporária"

mkdir images-resized
mkdir images-temp
mkdir images-transp

echo "Diminuindo as imagens:"

for szFile in images/*.jpg
do 
    echo "Diminuindo a imagem $szFile..."
    convert -resize 40% "$szFile" images-resized/"$(basename "$szFile")" ; 
done

echo "Removendo o fundo das imagens"

rembg p -a -ae 30 images-resized/ images-temp/

echo "Tratando as imagens de saída"

for szFile in images-temp/*.png
do 
    convert "$szFile" -rotate 90 images-transp/"$(basename "$szFile")" ; 
done

echo "Removendo as imagens temporárias"

rm -fr images-temp/
rm -fr images-resized/
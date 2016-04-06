#! /bin/sh
# coding: UTF-8

#script del shell 
#Genera pàgines XHTML pels documents de Docker 
#que has posat en aquest projecte. 

# On $1 és el repositori de git

for file in *.md
do
	pandoc  --standalone \
		--from markdown \
		--to html \
		$file \
		--output ${file%.md}.html
	xmllint --noout --valid ${file%.md}.html

done


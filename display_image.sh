#!/bin/bash

#Run unclutter
unclutter &

#Run update script

./pull_pdf.sh

#Converts each pdf into png

for pdf in ~/dfec-pi/pi-1/*.pdf; do

convert -density 150 "$pdf" -quality 90 "/tmp/output-$(basename "${pdf%.*}")-%03d.png"

done

#Display Images in a slideshow

feh  --auto-zoom --fullscreen --slideshow-delay 10 ~ /tmp/output-*.png

#Clean up temp file

rm /tmp/ouput-*.png

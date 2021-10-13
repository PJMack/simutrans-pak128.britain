#!/bin/bash

#Process output of blend file into single image
convert button.png \( /tmp/pier_0025.png -resize 32x32 -background 'transparent' -extent 128x128 -gravity northwest -channel A -threshold 50% \) -layers flatten /tmp/pier_2000.png
convert /tmp/pier_0025.png -resize 64x64 -background 'transparent' -extent 128x128 -gravity center -channel A -threshold 50%  /tmp/pier_2001.png
montage /tmp/pier_* -tile 25x -geometry +0+0 -background '#E7FFFF' pier.png

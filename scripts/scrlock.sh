#/bin/sh

pngfile="/tmp/sclock.png"
bmpfile="/tmp/sclock.bmp"
glitchedfile="/tmp/sclock_g.bmp"

scrot -z $pngfile

# convert to bmp
magick convert  $pngfile $bmpfile


# Glitch it with sox FROM: https://maryknize.com/blog/glitch_art_with_sox_imagemagick_and_vim/
sox -t ul -c 1 -r 48k $bmpfile -t ul $glitchedfile trim 0 100s : echo 0.9 0.8 100 0.9

# Add lock icon, pixelate and convert back to png
magick convert -gravity center -font "Hack-Bold-Nerd-Font-Complete-Mono" \
    -pointsize 200 -draw "text 0,240 ''" -channel RGBA -fill '#bf616a' \
    -scale 20% -scale 500% $glitchedfile $pngfile
i3lock -i $pngfile
#feh $pngfile
rm $pngfile $bmpfile $glitchedfile

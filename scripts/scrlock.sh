#/bin/sh
# Glichting screen lock script by xzvf

pngfile="/tmp/sclock.png"
bmpfile="/tmp/sclock.bmp"
glitchedfile="/tmp/sclock_g.bmp"

scrot -z $pngfile

# convert to bmp and pixelate
magick convert -rotate -90 $pngfile $bmpfile


for a in {1,2,4,5,10}
do
    # Glitch it with sox FROM: https://maryknize.com/blog/glitch_art_with_sox_imagemagick_and_vim/
    sox -t ul -c 1 -r 48k $bmpfile -t ul $glitchedfile trim 0 90s : echo 1 1 $((a*2)) 0.1
    # Rotate it by 90 degrees
    magick convert -scale $((100/(a)))% -scale $((100*(a)))% -rotate 90 $glitchedfile $bmpfile
done


# Add lock icon, pixelate and convert back to png
magick convert -gravity center -font "Hack-Bold-Nerd-Font-Complete-Mono" \
    -pointsize 200 -draw "text 0,0 ''" -channel RGBA -fill '#bf616a' \
    $bmpfile $pngfile

i3lock -e -u -i $pngfile
#feh $pngfile
rm $pngfile $bmpfile $glitchedfile

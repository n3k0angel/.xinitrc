sleep 1s
setxkbmap -layout LAYOUTHERE
numlockx &
xrandr --screen 0 -s WIDTHxHEIGHT --dpi 96

# Statusbar loop
while true; do
   xsetroot -name "$( brightnessctl info | grep "Current" | sed 's/Current brightness/B/g' ) $( echo " | " ) $( acpi -b ) $( echo " | " ) $( date +"%F %T" )"
   sleep 1s
done &

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &
dunst &
picom -b
./.fehbg
gummy start
brightnessctl -q set 50%
exec dwm

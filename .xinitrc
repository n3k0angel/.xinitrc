sleep 1s
setxkbmap -layout fi
numlockx &
xrandr --screen 0 -s 1920x1080 --dpi 96

# Statusbar loop
while true; do
   xsetroot -name "$( brightnessctl info | grep "Current" | sed 's/Current brightness/B/g' ) $( echo " | " ) $( acpi -b ) $( echo " | " ) $( date +"%F %T" )"
   sleep 1s
done &

# Disable middle-mouse paste
while true; do
    xsel -fin </dev/null
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

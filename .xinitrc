sleep 1s
setxkbmap -layout fi
numlockx &
xrandr -s 1920x1080 --dpi 96

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
sleep 2
/usr/bin/pipewire-pulse &
sleep 2
/usr/bin/wireplumber &
sleep 2

dunst &

# Darkmode for GTK stuff
export GTK_THEME=Adwaita:dark

compfy -b
./.fehbg
brightnessctl -q set 50%
exec dwm

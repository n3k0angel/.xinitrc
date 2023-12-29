setxkbmap -layout LAYOUTHERE
xrandr --screen 0 -s widhtxheight

# Statusbar loop
while true; do
   xsetroot -name "$(acpi -b) $(echo " | ") $( date +"%F %T" )"
   sleep 1s
done &

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &
picom -b
./.fehbg
exec dwm

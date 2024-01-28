sleep 1s
setxkbmap -layout fi
numlockx &
xrandr --screen 0 -s 1920x1080 --dpi 96

dwmblocks &

# Disable middle-mouse paste
while true; do
    xsel -fin </dev/null
done &

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &

dunst &

compfy -b
./.fehbg
brightnessctl -q set 50%
exec dwm

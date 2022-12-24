xrandr --output DP-2 --primary --rate 144 --mode 1920x1080 --output DP-0 --rate 74.97 --mode 1920x1080 --left-of DP-2 &
/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &
sh ~/.fehbg &
redshift -P -O 4500 &
dwmblocks &
exec dwm

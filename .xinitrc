xrandr --output DP-2 --primary --rate 144 --mode 1920x1080 --output DP-0 --rate 74.97 --mode 1920x1080 --rotate left --left-of DP-2 &
sh ~/.fehbg &
slstatus &
xrdb ~/.Xresources &
redshift -P -O 5000 &
greenclip daemon &
exec dwm

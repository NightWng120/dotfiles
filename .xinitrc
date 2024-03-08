xrdb ~/.Xresources &
~/.fehbg &
#~/audio.sh &
playerctld &
xrandr -s 1920x1080
exec slstatus &
exec compton &
exec dbus-launch --sh-syntax --exit-with-session dwm
# Log stderror to a file
# while true; do
#     dbus-launch --sh-syntax --exit-with-session dwm >/dev/null 2>&1
# done

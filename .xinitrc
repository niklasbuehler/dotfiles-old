xset +fp /home/niklas/.fonts
xset fp rehash
xset b off
exec dbus-launch --autolaunch=$(cat /var/lib/dbus/machine-id) i3
#slstatus 2>&1 > /dev/null &
#feh --bg-fill Pictures/Background/statue_of_liberty.png;
#exec dwm

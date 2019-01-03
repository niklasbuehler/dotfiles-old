xset +fp /home/niklas/.fonts
xset fp rehash
xset b off
exec dbus-launch --autolaunch=$(cat /var/lib/dbus/machine-id) i3

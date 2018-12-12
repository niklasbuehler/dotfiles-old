exec dbus-launch --autolaunch=$(cat /var/lib/dbus/machine-id) i3
xset +fp /home/niklas/.fonts
xset fp rehash
xset b off
wal -i $(< $HOME/.cache/wal/wal)

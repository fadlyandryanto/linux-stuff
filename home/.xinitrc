#!/bin/sh
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval $(dbus-launch --sh-syntax --exit-with-session)
fi
pipewire &
sleep 1
wireplumber &
pipewire-pulse &
exec startxfce4
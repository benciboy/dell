#!/bin/bash


function alvas() {
dbus-send --print-reply --system --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend
}

function login_present() {
pidof xlock > /dev/null   2>&1 && return 0
return 1
}

while login_present
do
    idle=$(xprintidle)
    if [ $idle -lt 15000 ]; then
        echo `date`" ok $idle"  >> ~/lock.log
    else 
        echo `date`" nem ok $idle"  >> ~/lock.log
        alvas
    fi
    sleep 2
done

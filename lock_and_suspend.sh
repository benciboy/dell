
EY='i65CNu9XjJKs2'
PROG='xlock '
ARG="-cpasswd ${EY} -mode blank"
CMD2=" -startCmd "
ARG2="dbus-send --print-reply --system --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend"
ARG3="/home/${USER}/repos/dell/suspend_after_idletime.sh"

dbus-send --print-reply --system --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend
${PROG} ${ARG} ${CMD2} "${ARG3}"


export LANG="en_AU.UTF-8"
export LC_CTYPE="en_AU.UTF-8"

hsetroot -solid "#EEEEEE"

/usr/local/bin/picom &
exec mpd &
exec transmission-daemon &
exec xclock -geometry +1592+27 &
exec /usr/X11R6/bin/cwm


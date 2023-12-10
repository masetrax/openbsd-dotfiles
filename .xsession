export LANG="en_AU.UTF-8"
export LC_CTYPE="en_AU.UTF-8"

xrdb ~/.Xdefaults

# hsetroot -solid "#EEEEEE"
hsetroot -solid "#a3ccbd"

/usr/local/bin/picom &
exec mpd &
exec transmission-daemon &
exec xclock -geometry +1592+27 &
sh ~/bar &
exec /usr/X11R6/bin/cwm


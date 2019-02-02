setxkbmap -layout us,il
setxkbmap -option 'grp:alt_shift_toggle'

xbindkeys
dropbox-cli start
unclutter &
# xautolock -time 2 -locker "i3lock -f -e -c 101010" &
eval $(ssh-agent)

exec i3 >~/.config/i3/i3log-$(date +'%F-%k-%M-%S').log 2>&1

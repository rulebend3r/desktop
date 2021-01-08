#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

xset s noblank
xset s noexpose
xset s off -dpms

run "nm-applet"
run "compton"
run "yakuake"
#run "python3.6 /home/rulebend3r/.local/share/searx/searx/webapp.py"
#run "pidgin"

pkill conky

sleep 3
run "conky -c /home/rulebend3r/.config/awesome/conky/conkyrc"

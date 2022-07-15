#!/bin/zsh

entries="Logout\nSuspend\nReboot\nShutdown"

selected=$(echo -e $entries|wofi --conf ~/.config/wofi/power --style ~/.config/wofi/power.css --dmenu --cache-file /dev/null | awk '{print tolower($1)}')

case $selected in
  logout)
    swaymsg exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac

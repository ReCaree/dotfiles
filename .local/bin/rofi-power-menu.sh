#!/bin/bash
 
lock=" Lock"
logout="󰍃 Logout"
shutdown=" Poweroff"
reboot=" Reboot"
sleep=" Suspend"
 
selected_option=$(echo "$lock
$logout
$sleep
$reboot
$shutdown" | rofi -dmenu -i -config ~/.config/rofi/powermenu.rasi -yoffset 50  -p "Powermenu")



if [ "$selected_option" == "$lock" ]
then
  exec hyprlock
elif [ "$selected_option" == "$logout" ]
then
  exec hyprctl dispatch exit
elif [ "$selected_option" == "$shutdown" ]
then
  exec systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
  exec systemctl reboot
elif [ "$selected_option" == "$sleep" ]
then
  exec systemctl suspend
else
  echo "No match"
fi

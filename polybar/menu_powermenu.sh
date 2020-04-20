#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

rofi_command="rofi -theme power.rasi"

# Options
shutdown=""
reboot=""
lock="" 
logout=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "祥  $uptime    $cpu    $memory " -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        i3lock-fancy  -p
        ;;
    $logout)
        i3 --quit
        ;;
esac


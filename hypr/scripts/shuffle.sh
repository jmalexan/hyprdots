#!/bin/bash
newwall=$(find /home/joalexander/wallpapers/ -regex ".*\.\(jpg\)" -type f | shuf -n 1)
hyprctl hyprpaper unload all
cp "$newwall" /home/joalexander/wallpapers/current.jpg
hyprctl hyprpaper preload $newwall
hyprctl hyprpaper wallpaper "eDP-1,$newwall"
hyprctl hyprpaper wallpaper "DP-6,$newwall"
hyprctl hyprpaper wallpaper "DP-9,$newwall"

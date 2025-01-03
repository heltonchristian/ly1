#!/bin/bash

WALLPAPER_DIRECTORY=~/wallpapers

WALLPAPER=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "DP-1,$WALLPAPER"
hyprctl hyprpaper wallpaper "DVI-I-1,$WALLPAPER"

sleep 1

hyprctl hyprpaper unload unused


#!/usr/bin/env bash

tfile='/home/nsetyo/.wallpaper'

wget -q https://source.unsplash.com/1920x1080/?wallpapers,landscape -O $tfile

feh --bg-fill $tfile

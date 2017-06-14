#!/bin/bash

# This script changes the Apple Mac OSX wallpaper in 10.10 for the current user
# to Earth Horizon - feel free to set a different JPEG or download, then set it!
# Cribbed from this answer: http://stackoverflow.com/a/2119076
#
# "/Library/Desktop Pictures/greg_bday_desktop-01.png" (org)
#
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Library/Desktop Pictures/greg_bday_desktop-01.png"'

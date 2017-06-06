#!/bin/bash

# This script enumerates all TimeMachine backup destinations and removes them from settings
# Use wisely because it will nuke ALL of them, so if the user has their own set up, it will remove that as well
# We use this in a business environment with no personal TM backups and solely for migration purposes. YMMV.

#disable timemachine
tmutil disable

#list destinations with tmutil and then filter out IDs and remove them
dest_removal=$(tmutil destinationinfo | grep "ID" | cut -d ':' -f2)
for i in $dest_removal
    do
        tmutil removedestination $i
        echo removing destination ID $i
    done;
    
exit 0

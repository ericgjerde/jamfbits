#!/bin/bash

# Enables TimeMachine backups to a local network host for backup/migration purposes

# Set file share path to timemachine afp (edit username and password, ip address and volume/share name)
# We use the -a flag to append this destination to an existing list - otherwise it would replace/overwrite
# existing TM hosts on the system

tmutil setdestination -a afp://username:password@networkhost/TimeMachine

# Exclude all System folders
#tmutil addexclusion -p /Applications
#tmutil addexclusion -p /Library
#tmutil addexclusion -p /System

# Exclude any other users on the computer (Edit for your specifics)
# tmutil addexclusion -p /Users/localadmin

# Exclude hidden root os folders
#tmutil addexclusion -p /bin
#tmutil addexclusion -p /cores
#tmutil addexclusion -p /etc
#tmutil addexclusion -p /Network
#tmutil addexclusion -p /private
#tmutil addexclusion -p /sbin
#tmutil addexclusion -p /tmp
#tmutil addexclusion -p /usr
#tmutil addexclusion -p /var

# Enable timemachine to start auto backing up
tmutil enable

exit 0

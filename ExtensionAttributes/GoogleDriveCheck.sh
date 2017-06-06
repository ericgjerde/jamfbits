#!/bin/bash

# Extension Attribute for JAMF
# Checks for the presence of a specific Google Drive file that only is created on completed setup
# of Google Drive; gives us a good idea if the user is actually syncing with Drive.

# use Spotlight to search for ~/Library/Application Support/Google/Drive/user_default/sync_config.db
LogFile=$( mdfind 'kMDItemFSName = "sync_config.db"' )

if [ "$LogFile" ]; then
		echo "<results>Found</results>"
	else
		echo "<results>Not Found</results>"
	fi



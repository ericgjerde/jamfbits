#!/bin/bash

# We do a check for Source Sans Pro - Black, the main SourceSansPro font.

if [ -f /Library/Fonts/SourceSansPro-Black.ttf ]; then
	echo "<result>Yes</result>"
else
	echo "<result>No</result>"
fi

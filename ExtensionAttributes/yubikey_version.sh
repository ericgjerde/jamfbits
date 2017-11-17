#!/bin/bash

# Extension attribute for JAMF
# Checks for Yubikey from System Profiler, and reports on model & version number

# get Yubikey text block from System Profiler
system_profiler SPUSBDataType -detailLevel mini | grep -A 4 "Yubikey" >/tmp/ykdata.txt

# loop through it to get line values for clean output. this is harder than it should be
# because Apple doesn't like modern Bash. Sorry :/
unset lines
while IFS= read -r; do
    lines+=("$REPLY")
done < /tmp/ykdata.txt
[[ $REPLY ]] && lines+=("$REPLY")

# clean up by removing temp file
rm /tmp/ykdata.txt

# do some cleanup on the junky text we get. 
model=$(echo ${lines[0]}|sed -e 's/^[ \t]*//')
version=$(echo ${lines[4]}|sed -e 's/^[ \t]*//'| awk '{print $2}')

if [ -z "$version" ]
	then
		echo "<result></result>"
	else
		echo "<result>Version: $version </result>"
fi


# output the text so it's in proper format for JAMF extension attributes. Note: the newline stuff might be a problem with latest JSS.
#echo "<result>"
#echo "Model: $model"
#echo "Version: $version"
#echo "</result>"



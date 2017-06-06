#!/bin/bash

# Extension Attribute for JAMF
# checking to see if SSH is enabled

result=`systemsetup -getremotelogin`

if [[ "$result" == "Remote Login: On" ]]; then
		echo "<result>On</result>"
	else
		echo "<result>Off</result>"
	fi

#!/bin/bash

# Extension Attribute for JAMF
# checks if there is a firmware password set

result=`/usr/sbin/firmwarepasswd -check`

if [[ "$result" == "Password Enabled: Yes" ]]; then
echo "<result>Set</result>"
else
echo "<result>Not Set</result>"
fi

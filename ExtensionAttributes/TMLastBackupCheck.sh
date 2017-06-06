#!/bin/bash

# Extension Attribute for JAMF
# Checks for a valid completed TimeMachine backup and reports the date

backupDate="$(tmutil latestbackup)"

trimmedbackupDate="${backupDate: -17}"

Echo "<result>$trimmedbackupDate</result>"

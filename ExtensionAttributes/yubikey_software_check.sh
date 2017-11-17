#!/bin/bash

if [ -d "/usr/local/Caskroom/yubikey-personalization-gui" ]; then
	echo "<result>Yes</result>"
else
	echo "<result>No</result>"
fi
		
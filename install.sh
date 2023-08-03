#!/bin/bash
# install a daemon so the script runs every 15mins or whatever, configurable in the plist

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cp "${SCRIPT_DIR}/welcome" /usr/local/bin/
cp "${SCRIPT_DIR}/com.openai.welcomemessage.plist" /Library/LaunchDaemons/com.openai.welcomemessage.plist
launchctl load /Library/LaunchDaemons/com.openai.welcomemessage.plist
launchctl start com.openai.welcomemessage

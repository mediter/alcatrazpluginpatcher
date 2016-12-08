#!/bin/bash
#
# Patches plugin installed using Alcatraz package manager for Xcode 8+

xcodeid="$(defaults read /Applications/Xcode.app/Contents/Info.plist DVTPlugInCompatibilityUUID)"

echo "${xcodeid}"

find ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins -name Info.plist -maxdepth 3 | xargs -I{} defaults write {} DVTPlugInCompatibilityUUIDs -array-add $xcodeid
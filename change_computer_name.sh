#! /bin/bash
# Sometimes the hostname changes randomly, i.e. if your computer's name is Foo, it would change to Foo-2 and Foo-3 and so on.
# This resets that. NOTE: in order to see the change on your bash prompt (if your bash prompt uses your host name), you'll have to restart bash.

echo "Changing name from $HOSTNAME to $1..."

sudo /usr/libexec/PlistBuddy -c "Add :ProgramArguments: string --no-namechange" /System/Library/LaunchDaemons/com.apple.discoveryd.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.discoveryd.plist
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.discoveryd.plist
sudo scutil --set ComputerName $1
sudo scutil --set HostName $1
sudo scutil --set LocalHostName $1

echo "Name changed to $( hostname -f )"


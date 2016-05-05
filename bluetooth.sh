#! /bin/bash
# Should help stop choppy bluetooth audio
sudo defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" 53
#sudo renice -20 -p $(ps -A | grep -m1 blued | awk '{print $1}')
#sudo renice -20 -p $(ps -A | grep -m1 coreaudiod | awk '{print $1}') 

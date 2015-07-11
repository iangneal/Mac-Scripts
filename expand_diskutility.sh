#! /bin/bash
defaults write com.apple.DiskUtility advanced-image-options 1
defaults write com.apple.DiskUtility DUDebugMenuEnabled 1
# diskutil cs revert LVUUID when boot with alt cmd R

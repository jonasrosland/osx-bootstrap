# Some stuff was taken from
# https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# and
# https://github.com/paulmillr/dotfiles/blob/master/etc/osx.sh

# General
# =======

# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

#Enabling full keyboard access for all controls (e.g. enable Tab in modal dialogs
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3


# Screen
# ======

# Save screenshots to the downlaods.
defaults write com.apple.screencapture location "$HOME/Downloads/"

# Bottom right screen corner → Start screen saver
defaults write com.apple.dock wvous-br-corner -int 5
defaults write com.apple.dock wvous-br-modifier -int 0

# Sound
# =====
#Disable the Startup Chime
sudo nvram SystemAudioVolume=" "


# Trackpad
# ========

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
sudo defaults write com.apple.AppleMultitouchTrackpad Clicking 1

#Secondary click
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -bool true


# Finder
# ======

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Show the ~/Library folder
chflags nohidden ~/Library

# Remove duplicates in the “Open With” menu (also see `lscleanup` alias)
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user




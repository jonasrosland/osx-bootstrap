# Install Homebrew (http://brew.sh)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Homebrew
brew update

# Install oh-my-zsh to beautify and manage zsh
curl -L http://install.ohmyz.sh | sh

# Install brews
brew bundle Brewfile

# Install casks
brew bundle Caskfile

# Set standard settings
source 'settings.sh'
source 'symlink-dotfiles.sh'

# Update OS X
sudo softwareupdate -i -a

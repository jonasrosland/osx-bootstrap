# Install Homebrew (http://brew.sh)
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Install oh-my-zsh to beautify and manage zsh
curl -L http://install.ohmyz.sh | sh

# Install brews
brew bundle Brewfile

# Install casks
brew bundle Caskfile

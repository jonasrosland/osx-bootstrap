ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
curl -L http://install.ohmyz.sh | sh
brew bundle Brewfile
brew bundle Caskfile

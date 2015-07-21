#!/bin/bash
# Most of this is from https://github.com/paulmillr/dotfiles/blob/master/symlink-dotfiles.sh

dev="$HOME/Developer"
dotfiles="$dev/jonasrosland/osx-bootstrap/dotfiles"

if [[ -d "$dotfiles" ]]; then
  echo "Symlinking dotfiles from $dotfiles"
else
  echo "$dotfiles does not exist"
  exit 1
fi

link() {
  from="$1"
  to="$2"
  echo "Linking '$from' to '$to'"
  rm -f "$to"
  ln -s "$from" "$to"
}

for location in $dotfiles/.{zshrc,tmux.conf} ; do
  file="${location##*/}"
  file="${file%.sh}"
  link "$location" "$HOME/$file"
done

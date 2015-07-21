#!/bin/bash

# From https://github.com/caskroom/homebrew-cask/issues/309#issuecomment-17972519 by vitorgalvao

brew cask update

caskApps=$(ls /opt/homebrew-cask/Caskroom/) # Lists the casks in the Caskroom

echo "Apps to check: " $caskApps

for app in ${caskApps}; do # For every app there, do this
    echo "Checking: " $app

    appToCheck=$(brew cask list | grep "${app}") # If the app is not present in `brew cask list`, this variable will be empty

    if [[ -z "${appToCheck}" ]]; then # If the variable is empty, then
        echo $app " is not in your list of installed apps, so will install it"
        brew cask install --force "${app}" # Force an install of the app
    fi
done

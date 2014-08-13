osx-bootstrap
=============

*Confirmed working on OSX Yosemite beta*

Bootstrap for new OSX installs

These files will install a bunch of great tools on your newly installed Mac. If it's not a brand new install of OSX you'll most probably be able to use these anyway :)

Run the following command to do a proper install of Homebrew, cask, oh-my-zsh, and a bunch of great tools and apps:

```
curl --silent https://raw.githubusercontent.com/virtualswede/osx-bootstrap/master/install.sh | sh
```

If you don't want all the apps I use, make sure fork this and edit the Brewfile and Caskfile to your liking.

Enjoy!

## Requirements

You'll need to have OSX Command Line Tools installed to use git, which will be installed automatically when you're trying to use git for the first time (during homebrew installation); you'll get a nice popup window asking you to install it, so let it do that for you. If you want to you can remove the OSX CLT afterwards as you'll probably install newer versions of these tools anyway.

## settings.sh

Some sane settings for me, use them at your own risk!

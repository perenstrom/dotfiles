# iTerm 2
## Installation
Install using Homebrew.

```
# install iterm
brew install --cask iterm2
```


## Sync configs
```
# Set the preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.dotfiles/system/iterm/settings"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
```

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Tap fonts
brew tap homebrew/cask-fonts

# Install svn
brew install svn

# Install Roboto Mono
brew install font-roboto-mono

# Install Java
brew tap adoptopenjdk/openjdk
brew install adoptopenjdk8
brew install adoptopenjdk13

# Install Firebase
brew install firebase-cli

# Install NVM
brew install nvm
mkdir ~/.nvm
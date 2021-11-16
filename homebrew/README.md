# Homebrew
## Installation
```
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add brew to path for this session
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Rosetta if on an Apple Silicon machine
sudo softwareupdate --install-rosetta

# Install preferred apps
source ~/.dotfiles/Homebrew/brew.sh
```

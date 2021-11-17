# Node JS
## Installation
```
# Install nvm
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
```

## Setup
Symlink the .npmrc dotfile:

```
ln -s ~/.dotfiles/nodejs/npmrc.symlink ~/.npmrc
```

## Note
If installing node versions lower than 15, run `arch -x86_64 $SHELL` (aliased to `intel`) in terminal before running `nvm install`. This changes the shell to x86. Run `exit` or `arch -arm64 $SHELL` (aliased to `arm`) to switch back.
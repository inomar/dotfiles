#!/bin/sh
ln -sf $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -sf $HOME/dotfiles/.bash_profile $HOME/.bash_profile
ln -sf $HOME/dotfiles/.bashrc $HOME/.bashrc
if [ -a $HOME/.hyper.js ]; then
  rm $HOME/.hyper.js
fi
ln -sh $HOME/dotfiles/.hyper.js $HOME/.hyper.js
# ln -sh $HOME/dotfiles/vscode/setting.json $HOME/Library/Application\ Support/Code/User/settings.json

if [ -a $HOME/.config/fish/config.fish ]; then
  rm $HOME/.config/fish/config.fish
fi
ln -f $HOME/dotfiles/fish/config.fish $HOME/.config/fish/
ln -f $HOME/dotfiles/fish/env.fish $HOME/.config/fish/conf.d/
ln -f $HOME/dotfiles/fish/alias.fish $HOME/.config/fish/conf.d/
ln -f $HOME/dotfiles/fish/gcp.fish $HOME/.config/fish/conf.d/

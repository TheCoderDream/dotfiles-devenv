#!/bin/bash -ex

# zsh goodies
rm -rf ~/.oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# change shell to zsh
sudo chsh -s /bin/zsh $USER

# place dotfiles
rm -rf ~/.dotfiles
mv ~/dotfiles ~/.dotfiles
ln -fs ~/.dotfiles/dotsyncrc ~/.dotsyncrc
cd ~/.dotfiles
./dotsync -I
./dotsync -L

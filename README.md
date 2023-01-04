# This is my personal vim config

## Install the following dependencies

## Install vim version >= 8

## Install Vundle to manage vim plugins. Refer following [link](https://github.com/VundleVim/Vundle.vim):

- To install Vundle first create the directory structure `~/.vim/bundle/`.
- Next setup Vundle by running: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

## Copy the Vim Config
To copy the vim config from the repo to home run: `cp .vimrc ~/.vimrc`

## Install the YCM completer dependencies
First install all YCM (youcompleteme) dependencies. Refer [here](https://github.com/ycm-core/YouCompleteMe#linux-64-bit) for details.
YCM provides python3 autocomplete by default, just install clang to get C/C++ support and all the other non-optional dependencies. 
Install build-essential, cmake, python3, git and clang for python3 and C/C++ support. 

## Install plugins
Launch vim and run `:PluginInstall`.
To install from command line run: `vim +PluginInstall +qall`

## Install the YCM Completer
```
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clangd-completer
```
## References
- [YCM Arch Wiki](https://wiki.archlinux.org/title/Vim/YouCompleteMe)
- [Vundle](https://github.com/VundleVim/Vundle.vim):
- [YCM Github](https://github.com/ycm-core/YouCompleteMe#linux-64-bit)

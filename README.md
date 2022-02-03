# This is my personal vim config

## Install the following dependencies

## Install vim version >= 8

## Install Pathogen to manage vim plugins. Refer following link:
https://github.com/tpope/vim-pathogen

## Install gruvbox plugin
`cd ~/.vim/bundle && git clone git@github.com:morhetz/gruvbox.git`

## Install nerdtree plugin
`cd ~/.vim/bundle && git clone git@github.com:preservim/nerdtree.git`

## Install vim-airline
`cd ~/.vim/bundle && git clone git@github.com:vim-airline/vim-airline.git`

## Install coc.nvim. Refer following link:
https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim

To build coc.nvim with pathogen, just clone the repo in ~/.vim/bundle, install
yarn and nodejs

### Run following for nodejs
`curl -sL install-node.now.sh | sudo bash`

### Run following for yarn
`curl --compressed -o- -L https://yarnpkg.com/install.sh | bash` 

### Navigate to coc.nvim inside vim bundle, and run:
`yarn install`

### Copy the .coc.vim file from repo to ~ directory.

### Copy the .vimrc file from repo to ~ directory.

#!/usr/bin/env bash
set -e
DOTFILES="${DOTFILES:-$HOME/.dotfiles}"

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

VIM_SENSIBLE="$HOME/.vim/bundle/vim-sensible"
if [ ! -d $VIM_SENSIBLE ]; then
  git clone https://github.com/tpope/vim-sensible.git $VIM_SENSIBLE
else 
  cd $VIM_SENSIBLE && git pull
fi

VIM_FUGITIVE="$HOME/.vim/bundle/fugitive"
if [ ! -d $VIM_FUGITIVE ]; then
  git clone https://github.com/tpope/vim-fugitive.git $VIM_FUGITIVE
else 
  cd $VIM_FUGITIVE && git pull
fi

VIM_NERDTREE="$HOME/.vim/bundle/nerdtree"
if [ ! -d $VIM_NERDTREE ]; then
  git clone https://github.com/preservim/nerdtree.git $VIM_NERDTREE
else 
  cd $VIM_NERDTREE && git pull
fi



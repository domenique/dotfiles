#!/usr/bin/env bash
set -e
DOTFILES="${DOTFILES:-$HOME/.dotfiles}"

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


cd ~/.vim/bundle && \
git clone https://github.com/tpope/vim-sensible.git && \
git clone https://tpope.io/vim/fugitive.git && \
git clone https://github.com/preservim/nerdtree.git




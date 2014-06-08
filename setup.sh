#!/bin/bash

set -e

DOT_VIM="$(cd $(dirname $0); pwd)"

pushd $DOT_VIM > /dev/null

if [ ! -f "autoload/pathogen.vim" ]
then
  mkdir -p autoload bundle
  curl -o autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi

git submodule init
git submodule update

popd > /dev/null

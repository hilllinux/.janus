#!/usr/bin/env bash
CWD=$(cd $(dirname $0) && pwd )
cd $CWD
for files in vimrc* gvimrc*
do
  ln -sf $CWD/$files ~/.$files
done
git submodule init
git submodule update

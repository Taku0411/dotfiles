#!/usr/bin/env bash
#
#ref: https://qiita.com/yutkat/items/c6c7584d9795799ee164

BASEDIR=$(dirname $0)
cd $BASEDIR

#install neovim
ln -s ${PWD}/nvim ~/.config/nvim

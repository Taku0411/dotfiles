#!/usr/bin/env bash
#
#ref: https://qiita.com/yutkat/items/c6c7584d9795799ee164

BASEDIR=$(dirname $0)
cd $BASEDIR

#install neovim
ln -s ${PWD}/.nvim ~/.config/nvim

mkdir .tmp_install/
cd .tmp_install/
wget https://github.com/microsoft/vscode-cpptools/releases/download/v1.14.5/cpptools-linux.vsix
unzip cpptools-linux.vsix
chmod +x ./extension/debugAdapters/bin/OpenDebugAD7
mv ./extension ~/.local/vscode-cpptools
cd ../ && rm -rf .tmp_install

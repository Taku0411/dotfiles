if &compatible
  set nocompatible
endif

" 外部設定ファイルの読み込み
runtime! option.vim
runtime! keymap.vim
runtime! dein.vim
runtime! myoption.vim

" シンタックスハイライトをONにする
syntax enable
set relativenumber

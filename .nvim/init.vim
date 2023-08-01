if &compatible
  set nocompatible
endif

" 外部設定ファイルの読み込み
runtime! options.vim
runtime! keymap.vim
runtime! dein.vim
runtime! myoption.vim

" シンタックスハイライトをONにする
syntax enable


lua require("dap-global")
lua require("dapui-global")

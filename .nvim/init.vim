if &compatible
  set nocompatible
endif

" 外部設定ファイルの読み込み
runtime! dein.vim
runtime! options.vim
runtime! keymap.vim
runtime! gnuplot.vim

" シンタックスハイライトをONにする
syntax enable

" dapに関する構成ファイルを読み込む
lua require("dap-global")
lua require("dapui-global")

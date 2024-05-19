let $CACHE = expand('~/.cache')
if !($CACHE->isdirectory())
  call mkdir($CACHE, 'p')
endif
if &runtimepath !~# '/dein.vim'
  let s:dir = 'dein.vim'->fnamemodify(':p')
  if !(s:dir->isdirectory())
    let s:dir = $CACHE .. '/dein/repos/github.com/Shougo/dein.vim'
    if !(s:dir->isdirectory())
      execute '!git clone https://github.com/Shougo/dein.vim' s:dir
    endif
  endif
  execute 'set runtimepath^='
        \ .. s:dir->fnamemodify(':p')->substitute('[/\\]$', '', '')
endif

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

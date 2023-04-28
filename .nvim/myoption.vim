"ワイが使うオプションやで

set tabstop=2 "タブ2文字
set shiftwidth=2 "自動インデント
set clipboard=unnamed "クリップボード
set ttimeoutlen=10 "tmux使用時にescの入力遅延を防ぐ
let g:python3_host_prog='~/.pyenv/versions/3.10.0/bin/python3'
let g:python_host_prog='~/.pyenv/versions/2.7.18/bin/python'

tnoremap <Esc> <C-\><C-n> "terminalモードからescで抜けられる

" vimairline用のオプション
let g:airline#extensions#tabline#enabled = 1 "tabを表示
let g:airline#extensions#tabline#buffer_idx_mode = 1 "tab番号を表示

" space + [で前のタブ
nmap <Leader>[ <Plug>AirlineSelectPrevTab
" space + ]で次のタブ
nmap <Leader>] <Plug>AirlineSelectNextTab

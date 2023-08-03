" デフォルトでインストールするもの
let g:coc_global_extensions = [
    \'coc-clangd',
    \'coc-pyright'
    \]

" エラーと警告の色を指定
highlight CocErrorSign ctermfg=15 ctermbg=196
highlight CocWarningSign ctermfg=0 ctermbg=172

"スペースinfoでHover
noremap <silent> <space>info :<C-u>call CocAction('doHover')<cr>
"スペースdfでDefinition
nnoremap <silent> <space>df :call CocAction('jumpDefinition')<CR>
"スペースfmtでFormat
nnoremap <space>fmt :call CocAction('format')<CR>
" Coc-quick-fix
nnoremap <space>fx :call CocAction('doQuickfix')<CR>
"スペース rnでRename
"nnoremap <silent> <Leader>rn :call 
"

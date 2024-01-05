" デフォルトでインストールするもの
let g:coc_global_extensions = [
    \'coc-clangd',
    \'coc-pyright',
    \'coc-lists',
    \'coc-toml',
    \'coc-cmake'
    \]

" エラーと警告の色を指定
highlight CocErrorSign ctermfg=15 ctermbg=196
highlight CocWarningSign ctermfg=0 ctermbg=172

"スペースinfoでHover
noremap <silent> <space>info :<C-u>call CocAction('doHover')<CR>
"スペースdfでDefinition
nnoremap <silent> <space>df :call CocAction('jumpDefinition')<CR>
"スペースfmtでFormat
nnoremap <space>fmt :call CocAction('format')<CR>
" Coc-quick-fix
nnoremap <space>fx :call CocAction('doQuickfix')<CR>
"スペース rnでRename
nmap <space>rn <Plug>(coc-rename)
"スペース enで次のエラーへ移動
nnoremap <space>en :call CocAction('diagnosticNext')<CR>
"スペース epで前のエラーへ移動
nnoremap <space>ep :call CocAction('diagnosticPrevious')<CR>
"スペース hiでヘッダーと実装を移動
nnoremap <silent> <space>hi :CocCommand clangd.switchSourceHeader<CR>

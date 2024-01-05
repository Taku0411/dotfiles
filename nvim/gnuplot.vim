" .plt ファイルを開いた時の filetype 設定
autocmd BufRead,BufNewFile *.plt set filetype=plt

" <leader>gnu にマップされたコマンドの定義
nnoremap <silent> <leader>gnu :call RunGnuplot()<CR>

" Gnuplotコマンドを実行する関数の定義
function! RunGnuplot()
    if &filetype == "plt"  " 現在のファイルが .plt ファイルかどうか確認
        let current_file = expand('%')  " 現在のファイルの名前を取得
        let current_dir = expand('%:p:h')  " 現在のファイルが存在するディレクトリを取得
        let file_name = fnamemodify(current_file, ':t:r')  " ファイル名のみを取得
        let command = 'cd ' . fnameescape(current_dir) . ' && gnuplot ' . file_name . '.plt' . ' && pdflatex ' . file_name . '.tex'
        call system(command)
    else
        echo "This is not a .plt file."  " .plt ファイルでない場合はメッセージを表示
    endif
endfunction

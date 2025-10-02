local opt = vim.opt

-- ######################## 見た目 ########################
opt.title = true -- ターミナルのタブ名に現在編集中のファイル名を設定
opt.relativenumber = true -- 行番号を今いる行から相対的に表示する(13ddとかするときに便利)
opt.wrap = true -- 右端まで表示される行を折り返して表示する
opt.showmatch = true -- 括弧入力時の対応する括弧を表示
opt.list = true -- 不可視文字(改行記号など)の可視化
-- デフォルト不可視文字は美しくないのでUnicodeできれいに
opt.listchars = {
	tab = "»-",
	trail = "-",
	extends = "»",
	precedes = "«",
	nbsp = "%",
	eol = "↲"
}
opt.matchtime = 3 -- 対応括弧のハイライト表示を3sにする

-- ######################## 検索・置換 ########################
opt.ignorecase = true -- 大文字小文字の区別なく検索する
opt.smartcase = true -- 検索文字列に大文字が含まれている場合は区別して検索する
opt.wrapscan = true -- 検索時に最後まで行ったら最初に戻る
opt.hlsearch = true -- 検索語をハイライト表示
opt.incsearch = true -- 検索文字列入力時に順次対象文字列にヒットさせる
opt.inccommand = "split" -- インタラクティブに変更

-- ######################## インデント ########################
opt.shiftwidth = 2 --自動インデント
opt.smartindent = true -- オートインデント
opt.expandtab = true -- softtabstop や shiftwidth で設定されている値分のスペースが挿入されたときに、挿入されたスペース数が tabstop に達してもタブに変換されない
opt.tabstop = 2 -- スペースn個分で1つのタブとしてカウントするか
opt.softtabstop = 2 -- <tab>を押したとき、n個のスペースを挿入
opt.shiftwidth = 2 -- <Enter>や<<, >>などを押したとき、n個のスペースを挿入

-- ######################## 補完 ########################
opt.wildmode= { "list", "longest"} -- コマンドラインの補完
opt.infercase = true -- 補完時に大文字小文字を区別しない
opt.wildmenu = true --コマンドの補完を有効に

-- ######################## 操作 ########################
opt.clipboard:append("unnamedplus") -- クリップボードにコピーできるようにする
opt.backspace = {"indent", "eol", "start"} -- backspaceで様々な文字を消せるようにする(デフォルトだと改行文字などはbackspaceで削除できない)
opt.hidden = true -- タブを切り替えるときに保存していなくてもOKにする
opt.textwidth = 0 --自動改行する文字数

-- ######################## ログ ########################
opt.history = 500 --保持するコマンド履歴の数

-- ######################## その他 ########################
vim.cmd("filetype plugin indent on") -- ファイルタイプの検索とプラグインをONにする
opt.ttimeoutlen = 10 --tmux使用時にescの入力遅延を防ぐ
opt.encoding = "utf-8" -- 文字コードをutf-8にする


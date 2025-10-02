local g = vim.g
local map = vim.keymap.set

 -- leaderをスペースに変更
g.mapleader = " "

 -- 入力モード中に素早くjjと入力した場合はESCとみなす
map("i", "jj", "<Esc>:w<CR>", { silent = true })

 -- ESCを2回押すことでハイライトを消す
map("n", "<Esc><Esc>", ":nohlsearch<CR>", { silent = true })

 -- ##### ウィンドウ操作系 #####
 -- 画面をspace+vで縦に分割する
map("n", "<Leader>v", ":vs<CR>", { silent = true })
 -- 画面をspace+sで横に分割する
map("n", "<Leader>s", ":sp<CR>", { silent = true })

 -- hjklの方向ににカーソルを移動させる
map("n", "<Leader>h", "<C-w>h", { silent = true })
map("n", "<Leader>j", "<C-w>j", { silent = true })
map("n", "<Leader>k", "<C-w>k", { silent = true })
map("n", "<Leader>l", "<C-w>l", { silent = true })

 -- ##### 行・列関係 #####
 -- 文章が画面の右端に到達すると折り返す設定をoption.vimで入れている
 -- hjklはデフォルトだと、折り返す前の表示で上下左右に移動できる
 -- つまり、折り返して表示した状態だと直感と実際のhjklの動作が違う
 -- これを修正するオプションがしたの4つ
map("n", "j", "gj", { noremap = true })
map("n", "k", "gk", { noremap = true })
map("v", "j", "gj", { noremap = true })
map("v", "k", "gk", { noremap = true })

-- terminalモードからescで抜けられる
map("t", "<Esc>", "<C-\\><C-n>")

-- space + [
map("n", "<Leader>[", "<Plug>AirlineSelectPrevTab")
 -- space + ]
map("n", "<Leader>]", "<Plug>AirlineSelectNextTab")

-- タブ移動
map("n", "<Right>", ":tabn<CR>")
map("n", "<Left>", ":tabN<CR>")

-- buffer切り替え＋削除
map("n", "<Leader>q", ":bp<bar>sp<bar>bn<bar>bd<CR>")

-- vimの補完機能
-- Tab: 次の候補 or Tab
local opts = { noremap = true, silent = true, expr = true }
map("i", "<TAB>", 'pumvisible() ? "\\<C-n>" : "\\<TAB>"', opts)
-- Shift-Tab: 前の候補 or Shift-Tab
map("i", "<S-TAB>", 'pumvisible() ? "\\<C-p>" : "\\<S-TAB>"', opts)



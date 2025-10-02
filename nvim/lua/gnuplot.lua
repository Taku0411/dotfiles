-- ファイルタイプ設定: *.plt を開いたら filetype=plt
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.plt",
  callback = function()
    vim.bo.filetype = "plt"
  end,
})

-- <leader>gnu にマッピング
vim.keymap.set("n", "<leader>gnu", function()
  -- 現在のファイルが .plt か確認
  if vim.bo.filetype == "plt" then
    local current_file = vim.fn.expand("%")      -- ファイル名
    local current_dir  = vim.fn.expand("%:p:h") -- ディレクトリ
    local file_name    = vim.fn.fnamemodify(current_file, ":t:r") -- 拡張子なしの名前

    -- コマンド作成
    local command = string.format(
      'cd %s && gnuplot %s.plt && pdflatex %s.tex',
      vim.fn.fnameescape(current_dir),
      file_name,
      file_name
    )

    -- 実行
    vim.fn.system(command)
  else
    print("This is not a .plt file.")
  end
end, { noremap = true, silent = true })

--[[
# requirements
## pdflatex, gnuplot
## gnuplot.gp file like follows

######## 以下テンプレート変更は基本しないこと #########
reset
set term tikz color standalone size 16cm,12cm preamble '\usepackage{amsmath,siunitx}'
# フォントとサイズ
set xtics font ",20" offset 0,-2   # 目盛りのフォントの変更
set ytics font ",20" # 目盛りのフォントの変更
set xlabel font ",20" offset 0,-3 # xlabelのフォントの変更
set ylabel font ",20" offset -3,0 # ylabelのフォントの変更
set key font ",20"    # 凡例のフォントの変更
set title font ", 20"  # タイトルのフォント変更
set label font ", 20"  # ラベルのフォント変更
# color settings
set style line 1 lw 5 lt rgb "black"
set style line 2 lw 5 lt rgb "#FF4B00" 
set style line 3 lw 5 lt rgb "#005AFF" 
set style line 4 lw 5 lt rgb "#03AF7A"
set style line 5 lw 5 lt rgb "#4DC4FF"
set style line 6 lw 5 lt rgb "#F6AA00"
set style line 7 lw 5 lt rgb "#FFF100"

#余白
set tmargin at screen 0.95
set bmargin at screen 0.15
set lmargin at screen 0.15
set rmargin at screen 0.88
#枠線
set border lw 3 back
#軸ラベル
set key outside reverse Left top left center maxrows 2 offset 12,5
######## 以上テンプレート変更は基本しないこと #########

# how to use
open *.plt file in neovim, then run <Space>gnu
pdf file will be made

# sample file
load "C:/Users/takumi/.config/nvim/lua/gnuplot.gp"
set output "energy.tex"
f(x) = x
plot f(x) title "aaa"
--]]

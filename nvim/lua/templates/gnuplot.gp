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

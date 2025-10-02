local map = vim.keymap.set

vim.opt.signcolumn= "yes"
vim.opt.updatetime = 100

-- space gp で次のハンクへ
map("n", "<space>hn", "<cmd>GitGutterNextHunk<CR>", { noremap = true, silent = true })
map("n", "<space>hp", "<cmd>GitGutterPrevHunk<CR>", { noremap = true, silent = true })

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- <Leader>eでファイルツリーを表示
-- nnoremap <silent> <space>e :NERDTreeToggle<CR>
map("n", "<space>e", "<cmd>NERDTreeToggle<CR>", opts)

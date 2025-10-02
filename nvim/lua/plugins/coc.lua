local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- デフォルトでインストールするもの
vim.g.coc_global_extensions = {
    "coc-clangd",
    "coc-pyright",
    "coc-lists",
    "coc-toml",
    "coc-cmake",
    }

-- エラーと警告の色を指定
vim.cmd("highlight CocErrorSign ctermfg=15 ctermbg=196")
vim.cmd("highlight CocWarningSign ctermfg=0 ctermbg=172")

-- スペースinfoでHover
map("n", "<Space>info", function()
  vim.fn.CocAction("doHover")
end, opts)

-- スペースdfでDefinition
map("n", "<space>df", function() vim.fn.CocAction("jumpDefinition") end, opts)

-- スペースfmtでFormat
map("n", "<space>fmt", function() vim.fn.CocAction("format") end, { silent = false })

-- Coc-quick-fix
map("n", "<space>fx", function() vim.fn.CocAction("doQuickfix") end, opts)

-- スペース rnでRename
map("n", "<space>rn", "<Plug>(coc-rename)", { noremap = true })

-- スペース enで次のエラーへ移動
map("n", "<space>en", function() vim.fn.CocAction("diagnosticNext") end, opts)

-- スペース epで前のエラーへ移動
map("n", "<space>ep", function() vim.fn.CocAction("diagnosticPrevious") end, opts)

-- スペース hiでヘッダーと実装を移動
map("n", "<space>hi", ":CocCommand clangd.switchSourceHeader<CR>", opts)

-- 補完
-- tabキーと shift+tabキーで補完候補を選択できる
-- Tab で次の補完候補
-- Shift+Tab で前の補完候補

local opts = { noremap = true, silent = true, expr = true }
map("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : "<Tab>"', opts)
map("i", "<S-TAB>", 'coc#pum#visible() ? coc#pum#prev(1) : "<C-h>"', opts)

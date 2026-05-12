return {
  -- coc.vim
  {
    "neoclide/coc.nvim",
    commit = "0568d11f5cb0e38aa18f28621feacbe5af473076",
    config = function()
      require("plugins.coc")
    end,
  },

  -- NERDTree
  {
    "scrooloose/nerdtree",
    config = function()
      require("plugins.nerdtree")
    end,
  },

  -- vim-gitgutter
  {
    "airblade/vim-gitgutter",
    config = function()
      require("plugins.vim-gitgutter")
    end,
  },

  -- debugger
  {
    "mfussenegger/nvim-dap",
    dependencies = { "rcarriga/nvim-dap-ui" },
  },

  -- dap ui
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require("plugins.nvim-dap-ui")
    end,
  },

  -- mason
  {
    'williamboman/mason.nvim',
    config = function()
      require("plugins.mason")
    end,
  },

  -- jetbrains theme
  {
    'doums/darcula',
    config = function()
      require("plugins.darcula")
    end,
  },

  -- airline
  {
    'vim-airline/vim-airline',
    config = function()
      vim.g["airline#extensions#tabline#enabled"] = 1
    end,
  },
}

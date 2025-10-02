return {
  -- coc.vim
  {
    "neoclide/coc.nvim",
    branch = "release",
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

  -- codecompanion
  {
    "olimorris/codecompanion.nvim",
    opts = {
      strategies = {
        chat = {
          adapter = "gpt",
          inline = "gpt",
        }
      },
      adapters = {
        gpt = function()
          return require("codecompanion.adapters").extend("ollama", {
            name = "gpt",
            schema = {
              model = {
                default = "gpt-oss:20b",
              },
            },
          })
        end,
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}

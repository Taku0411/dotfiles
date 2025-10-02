-- ここにdap.adapters.codelldbの設定を追加
local dap = require('dap')
dap.adapters.codelldb = {
  type = 'server',
  port = '${port}', -- 適切なポート番号を設定してください
  executable = {
    command = vim.loop.os_homedir() .. '/AppData/Local/nvim-data/mason/bin/codelldb.cmd',
    args = {'--port', '${port}'}, -- 適切なポート番号を設定してください
  }
}

-- 1. dap-config.lua ファイルが存在する場合はそれを読み込む
local dap_config_path = vim.fn.getcwd() .. "/dap-config.lua"

-- 2. デフォルトの設定を登録する関数
local function setup_default_configurations()
  local dap = require("dap")
  dap.configurations.cpp = {
    {
      name = "debug",
      type = "codelldb",
      request = "launch",
      program = function()
        return vim.fn.input('path to executable: ', vim.fn.getcwd() .. '/build', 'file')
      end,
      cwd = "${workspaceFolder}"
    },
  }
end
-- デフォルト設定終わり

-- 3  dap-config.lua ファイルが存在する場合はその内容を読み込む
if vim.fn.filereadable(dap_config_path) == 1 then
  dofile(vim.fn.getcwd() .. "/dap-config.lua")
  vim.notify("local configurations file is loaded")
-- 4. dap-config.lua ファイルが存在しない場合はデフォルトの設定を登録する
else
  setup_default_configurations()
  vim.notify("default configurations are loaded")
end


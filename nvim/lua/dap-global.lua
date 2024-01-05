-- ここにdap.adapters.codelldbの設定を追加
local dap = require('dap')
dap.adapters.codelldb = {
  type = 'server',
  port = '${port}', -- 適切なポート番号を設定してください
  executable = {
    command = vim.loop.os_homedir() .. '/.local/share/nvim/mason/packages/codelldb/codelldb',
    args = {'--port', '${port}'}, -- 適切なポート番号を設定してください
  }
}

-- 1. dap-config.lua ファイルが存在する場合はそれを読み込む
local has_dap_config, dap_config = pcall(require, "dap-config")
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

-- 3. dap-config.lua ファイルが存在しない場合はデフォルトの設定を登録する
if not has_dap_config then
  setup_default_configurations()
  print("default configurations are loaded")
end

--4. 4. dap-config.lua ファイルが存在する場合はその内容を読み込む
if has_dap_config then
  dofile(vim.fn.getcwd() .. "/dap-config.lua")
  print("local configurations file is loaded")
end


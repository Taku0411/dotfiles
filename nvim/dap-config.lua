local dap = require('dap')

dap.configurations.cpp = {
  {
    name = 'debug',
    type = 'codelldb',
    request = 'launch',
    program = '${workspaceFolder}/a.out',
    cwd = '${workspaceFolder}',
    args = {},
    stopOnEntry = false
  },
}
dap.configurations.c = dap.configurations.cpp


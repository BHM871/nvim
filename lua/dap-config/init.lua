require("dapui").setup()

local dap, dapui = require("dap"), require("dapui")

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

dap.adapters = {
  dart = {
    type = "executable",
    command = "flutter",
    args = {"debug_adapter"}
  },
  cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = '/home/adrian/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
  }
}

dap.configurations = {
  dart = {
    {
      type = "dart",
      request = "launch",
      name = "Launch Flutter Program",
      program = "${file}",
      cwd = "${workspaceFolder}",
    }
  },
  cpp = {
    {
      name = "Launch file",
      type = "cppdbg",
      request = "launch",
      program = "${file}", 
      cwd = '${workspaceFolder}',
      stopAtEntry = true,
    },
    {
      name = 'Attach to gdbserver :1234',
      type = 'cppdbg',
      request = 'launch',
      MIMode = 'gdb',
      miDebuggerServerAddress = 'localhost:1234',
      miDebuggerPath = '/usr/bin/gdb',
      cwd = '${workspaceFolder}',
      program = "${file}"
    },
  }
}

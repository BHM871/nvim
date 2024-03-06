require('dap').configurations = {
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

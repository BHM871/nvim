return {
  setup = function(dap)
    dap.adapters.gdb = {
      id = "gdb",
      type = "executable",
      command = "/usr/bin/gdb",
      args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
    }

    dap.configurations.c = {
      {
        name = "Launch",
        type = "gdb",
        request = "launch",
        program = function()
          return vim.fn.getcwd() .. '/' .. vim.fn.expand('%:t:r')
        end,
        cwd = "${workspaceFolder}",
        stopAtEntry = true,
        stopAtBeginningOfMainSubprogram = false,
      },
      {
        name = "Attach",
        type = "gdb",
        request = "attach",
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        pid = function()
          local name = vim.fn.input('Executable name (filter): ')
          return require("dap.utils").pick_process({ filter = name })
        end,
        cwd = '${workspaceFolder}',
        stopAtEntry = true,
        stopAtBeginningOfMainSubprogram = false,
      },
    }

    dap.configurations.cpp = dap.configurations.c
    dap.configurations.rust = dap.configurations.c
  end
}

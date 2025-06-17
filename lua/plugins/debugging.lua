local setup_c = function(dap)
  dap.adapters.gdb = {
    type = "executable",
    command = "/usr/local/bin/gdb",
    args = { "--interpreter=dap", "--quiet", "--eval-command", "set print pretty on" }
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
      cwd = '${workspaceFolder}'
    },
    {
      name = 'Attach to gdbserver :8777',
      type = 'gdb',
      request = 'attach',
      target = 'localhost:8777',
      program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      end,
      cwd = '${workspaceFolder}'
    },
  }

  dap.configurations.cpp = dap.configurations.c
  dap.configurations.rust = dap.configurations.c
end

return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      setup_c(dap)

      local opts = {}
      local keymap = vim.keymap.set

      keymap("n", "<F7>", dap.step_into, opts)
      keymap("n", "<F8>", dap.step_over, opts)
      keymap("n", "<F9>", dap.continue, opts)
      keymap("n", "<F10>", dap.toggle_breakpoint, opts)
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "theHamsta/nvim-dap-virtual-text",
    },
    config = function()
      local dapui = require("dapui")
      local daptxt = require("nvim-dap-virtual-text")

      dapui.setup()
      daptxt.setup()

      local dap = require("dap")
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
    end
  }
}

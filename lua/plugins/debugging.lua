return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

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

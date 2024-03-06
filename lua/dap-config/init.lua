require("dapui").setup()

local dap, dapui = require("dap"), require("dapui")
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<F5>", ":DapContinue<CR>", opts)
keymap("n", "<F29>", ":DapTerminate<CR>", opts)
keymap("n", "<F17>", ":DapToggleRepl<CR>", opts)
keymap("n", "<F9>", ":DapToggleBreakpoint<CR>", opts)
keymap("n", "<F10>", ":DapStepOver<CR>", opts)
keymap("n", "<F11>", ":DapStepInto<CR>", opts)

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

require('dap-config.adapters')
require('dap-config.configurations')

local keymap = vim.api.nvim_set_keymap

local opts = {silent = true, noremap = true, expr = true}
keymap("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : "<TAB>"', opts)
keymap("i", "<S-TAB>", 'coc#pum#visible() ? coc#pum#prev(1) : "<C-h>" ', opts)

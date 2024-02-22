local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
local remap = vim.keymap.set

			-- Meus mapeamentos

		-- Normal Mode

	-- Atalhos para Plugins
keymap("n", "<C-b>", ":NERDTreeToggle<CR>", opts)
keymap("n", "<C-p>", ":PlugInstall<CR>", opts)

  -- Atalhos funcionais
keymap("n", "<S-t>", "<C-w><C-s><C-w><C-j>:res -12<CR>:terminal<CR>", opts)
keymap("n", "<A-o>", ":only<CR>", opts)

keymap("n", "<C-s>", ":wa<CR>", opts)
remap("n", "<S-h>", ":tabn<CR>", opts)
remap("n", "<S-l>", ":tabp<CR>", opts)
remap("n", "<S-e>", ":tabc<CR>", opts)

remap("n", "<C-h>", "<C-w>h", opts)
remap("n", "<C-j>", "<C-w>j", opts)
remap("n", "<C-k>", "<C-w>k", opts)
remap("n", "<C-l>", "<C-w>l", opts)

	-- Resize com setas
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

		-- Insert Mode

	-- Atalhos funcionais
keymap("i", "<A-o>", ":only<CR>", opts)
-- Terminal Mode

	-- Atalhos funcionais
keymap("t", "<S-t>", "<C-\\><C-n>:q<CR>", opts)
keymap("t", "<ESC>", "<C-\\><C-n>", opts)

keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", opts)
keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", opts)
keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", opts)
keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", opts)

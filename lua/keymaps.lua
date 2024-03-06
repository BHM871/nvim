local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

			-- Meus mapeamentos

		-- Normal Mode

	-- Atalhos para Plugins
keymap("n", "<C-b>", ":NERDTreeToggle<CR>", opts)
keymap("n", "<C-f>", ":NERDTreeFind<CR>", opts)
keymap("n", "<C-p>", ":PlugInstall<CR>", opts)

  -- Atalhos funcionais
keymap("n", "<S-t>", "<C-w>s<C-w>j:res -12<CR>:terminal<CR>", opts)
keymap("n", "<A-o>", ":only<CR>", opts)

-- Salvar e fechar buffers
keymap("n", "<C-s>", ":wa<CR>", opts)
keymap("n", "<C-w><C-q>", ":bdelete<CR>:NERDTreeFocus<CR><C-w>h", opts)

-- Navegacoes entre Tabs
keymap("n", "<S-h>", ":tabp<CR>", opts)
keymap("n", "<S-l>", ":tabn<CR>", opts)
keymap("n", "<S-e>", ":tabc<CR>", opts)

-- Navegacoes entre telas
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

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

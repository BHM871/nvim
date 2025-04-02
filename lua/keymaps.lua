local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Meus mapeamentos

---- Normal Mode

-------- Atalhos funcionais
keymap("n", "<F60>", "<C-w>s<C-w>j:res -12<CR>:terminal<CR><Insert>", opts)
keymap("n", "<A-o>", ":only<CR>", opts)

-------- Salvar e fechar buffers
keymap("n", "<C-s>", ":wa<CR>", opts)
keymap("n", "<C-w><C-q>", ":bdelete<CR>:NvimTreeOpen<CR><C-w>h", opts)

-------- Navegacoes entre Tabs
keymap("n", "<S-e>", ":tabc<CR>", opts)

-------- Navegacoes entre telas
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

------ Resize com setas
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

---- Insert Mode

------ Atalhos funcionais
keymap("i", "<A-o>", ":only<CR>", opts)

---- Terminal Mode

------ Atalhos funcionais
keymap("t", "<ESC>", "<C-\\><C-n>", opts)
keymap("t", "<F60>", "<C-\\><C-n>:q<CR>", opts)

keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", opts)
keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", opts)
keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", opts)
keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", opts)

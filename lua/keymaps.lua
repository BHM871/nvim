local opts = { noremap = true, silent = true, nowait = true }
local keymap = vim.keymap.set

-- Meus mapeamentos

---- Normal Mode

-------- Atalhos funcionais
keymap("n", "<F60>", vim.api.open_terminal, opts)
keymap("n", "<A-o>", ":only<CR>", opts)

-------- Salvar e fechar buffers
keymap("n", "<C-s>", ":wa<CR>", opts)
keymap("n", "<F28>", ":bdelete<CR>:Telescope buffers<CR>", opts)

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
keymap("i", "<S-Tab>", "<ESC><<<Insert>", opts)

---- Visual Line Mode

------ Atalhos funcionais
keymap("x", "<Tab>", ">><Normal>", opts)
keymap("x", "<S-Tab>", "<<<Normal>", opts)

---- Terminal Mode

------ Atalhos funcionais
keymap("t", "<F28>", "<C-\\><C-n>:bd!<CR>", opts)
keymap("t", "<F60>", "<C-\\><C-n>:q<CR>", opts)

keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", opts)
keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", opts)
keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", opts)
keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", opts)

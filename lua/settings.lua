	-- Tema
vim.cmd [[colorscheme sonokai]]
vim.opt.termguicolors = true

vim.wo.number = true
vim.wo.relativenumber = true

-- Text and Font
vim.o.wrap = false
vim.opt.encoding = "utf-8"
vim.o.guifont = "JetBrains Mono"

--Airline
vim.g.airline_powerline_fonts = 2
vim.g["airline#extensions#tabline#enabled"] = 1
vim.g["airline#extensions#tabline#left_sep"] = ' '
vim.g["airline#extensions#tabline#left_alt_sep"] = '|'
vim.g["airline#extensions#tabline#formatter"] = 'default'

	-- Funcionais

-- <Tab> Config
local tab_width = 2
vim.opt.tabstop = tab_width
vim.opt.softtabstop = tab_width
vim.opt.shiftwidth = tab_width

-- Salvar e Atualizar
vim.o.autowriteall = true
vim.o.autowrite = true
vim.o.autoread = true

-- Identação
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true

-- Outros
vim.o.hidden = true
vim.o.incsearch = true
vim.opt.scrolloff = 10
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.mouse = ""


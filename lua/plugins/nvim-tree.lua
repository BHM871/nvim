return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        vim.opt.termguicolors = true

        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        })

        local api = require("nvim-tree.api")
        local opts = { noremap = true, silent = true }
        local keymap = vim.api.nvim_set_keymap

        keymap("n", "<A-1>", ":NvimTreeToggle<CR>", opts)
        keymap("n", "<C-f>", ":NvimTreeFindFile<CR>", opts)
        vim.keymap.set("n", "?", api.tree.toggle_help, opts)
    end
}

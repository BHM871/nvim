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
        local opts = { noremap = true, silent = true, nowait = true }
        local keymap = vim.keymap.set

        keymap("n", "<A-1>", ":NvimTreeToggle<CR>", opts)
        keymap("n", "?", api.tree.toggle_help, opts)
    end
}

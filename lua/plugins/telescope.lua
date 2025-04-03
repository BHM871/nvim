return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("telescope").setup()

            local builtin = require("telescope.builtin")
            local opts = { noremap = true, silent = true, nowait = true }
            local keymap = vim.keymap.set

            keymap("n", "<S-g>", builtin.live_grep, opts)
            keymap("n", "<S-b>", builtin.buffers, opts)
            keymap("n", "<S-h>", builtin.help_tags, opts)
            keymap("n", "<S-f>", ":Telescope find_files<CR>", opts)
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({})
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end
    }
}

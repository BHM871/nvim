return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                    "dockerls",
                    "jdtls",
                    "ts_ls",
                    "html",
                    "cssls",
                    "ast_grep",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.dockerls.setup({})
            lspconfig.jdtls.setup({})

            lspconfig.ts_ls.setup({})
            lspconfig.html.setup({
                filetypes = {
                    "html",
                    "templ",
                    "jsp",
                },
            })
            lspconfig.cssls.setup({})

            lspconfig.ast_grep.setup({})

            local opts = { noremap = true, silent = true, nowait = true }
            local keymap = vim.keymap.set

            keymap("n", "<C-space>", vim.lsp.buf.hover, opts)
            keymap("n", "<gd>", vim.lsp.buf.declaration, opts)
            keymap("n", "<gi>", vim.lsp.buf.implementation, opts)
            keymap("n", "<A-l>", vim.lsp.buf.format, opts)

            keymap("i", "<C-space>", vim.lsp.buf.code_action, opts)
        end,
    }
}

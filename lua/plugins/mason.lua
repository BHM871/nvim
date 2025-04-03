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

               local keymap = vim.keymap.set

               keymap("n", "<C-space>", vim.lsp.buf.hover, {})
               keymap("n", "<gD>", vim.lsp.buf.declaration, {})

               keymap("i", "<C-i>", vim.lsp.buf.implementation, {})
               keymap("i", "<C-space>", vim.lsp.buf.code_action, {})
          end,
     },
}

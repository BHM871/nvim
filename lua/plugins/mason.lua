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
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.clangd.setup({
        capabilities = capabilities,
      })
      lspconfig.dockerls.setup({
        capabilities = capabilities,
      })
      lspconfig.jdtls.setup({
        capabilities = capabilities,
      })

      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
        filetypes = {
          "html",
          "templ",
          "jsp",
        },
      })
      lspconfig.cssls.setup({
        capabilities = capabilities,
      })

      lspconfig.dartls.setup({
        dartls = {
          cmd = { "dart", "language-server", "--protocol=lsp" },
          capabilities = capabilities,
        }
      })

      lspconfig.ast_grep.setup({
        capabilities = capabilities,
      })

      local opts = { noremap = true, silent = true, nowait = true }
      local keymap = vim.keymap.set

      keymap("n", "<A-CR>", vim.lsp.buf.hover, opts)
      keymap("n", "gD", vim.lsp.buf.declaration, opts)
      keymap("n", "gd", vim.lsp.buf.definition, opts)
      keymap("n", "gi", vim.lsp.buf.implementation, opts)
      keymap("n", "<A-l>", vim.lsp.buf.format, opts)

      keymap("i", "<A-CR>", vim.lsp.buf.code_action, opts)
    end,
  }
}

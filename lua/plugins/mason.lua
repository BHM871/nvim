local language_servers = {
  "lua_ls",
  "clangd",
  "dockerls",
  "jdtls",
  "ts_ls",
  "html",
  "cssls",
  "ast_grep",
}

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
        ensure_installed = language_servers,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      for _, language in pairs(language_servers) do
        lspconfig[language].setup({ capabilities = capabilities })
      end

      lspconfig.html.setup({
        filetypes = {
          "html",
          "templ",
          "xhtml",
          "jsp",
        },
      })

      lspconfig.dartls.setup({
        dartls = {
          cmd = { "dart", "language-server", "--protocol=lsp" },
        }
      })

      local opts = { noremap = true, silent = true, nowait = true }
      local keymap = vim.keymap.set

      keymap("n", "<A-CR>", vim.lsp.buf.hover, opts)
      keymap("n", "gD", vim.lsp.buf.declaration, opts)
      keymap("n", "gd", vim.lsp.buf.definition, opts)
      keymap("n", "gI", vim.lsp.buf.implementation, opts)
      keymap("n", "gi", vim.lsp.buf.incoming_calls, opts)
      keymap("n", "<A-l>", vim.lsp.buf.format, opts)

      keymap("i", "<A-CR>", vim.lsp.buf.code_action, opts)
    end,
  }
}

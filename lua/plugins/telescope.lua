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

      keymap("n", "<C-e>", builtin.buffers, opts)
      keymap("n", "<C-n>", builtin.find_files, opts)
      keymap("n", "<C-p>", builtin.commands, opts)
      keymap("n", "<C-f>", builtin.live_grep, opts)
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

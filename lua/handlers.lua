vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    require('config.default').setup()
  end
});

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "lua",
    "dart",
    "yaml",
  },
  callback = function()
    require('config.tiny-language').setup()
  end
});

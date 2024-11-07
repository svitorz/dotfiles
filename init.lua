-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.api.nvim_create_augroup("MyFileTypes", {})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.blade.php" },
  command = "setlocal filetype=html",
  group = "MyFileTypes",
})
require("telescope").setup({
  vimgrep_arguments = {
    "--no-ignore",
  },
})

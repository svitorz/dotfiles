-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.guifont = "JetBrains Mono:h12"
-- Set to "intelephense" to use intelephense instead of phpactor.
vim.g.lazyvim_php_lsp = "intelephense"

vim.api.nvim_create_autocmd("BufRead,BufNewFile", {
  pattern = "*.blade.php",
  command = "setlocal filetype=html",
})

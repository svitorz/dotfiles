require("nvim-treesitter.configs").setup({
  ensure_installed = { "html", "javascript", "php", "vue" },
  highlight = { enable = true },
  indent = { enable = true },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "blade",
  command = "setlocal indentexpr=",
})

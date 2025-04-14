require("nvim-treesitter.configs").setup({
  ensure_installed = { "html", "javascript", "php", "vue" },
  highlight = { enable = true },
  indent = { enable = true },
})

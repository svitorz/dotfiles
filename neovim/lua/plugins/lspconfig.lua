return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      phpactor = {
        enabled = lsp == "phpactor",
      },
      [lsp] = {
        enabled = true,
      },
    },
  },
}

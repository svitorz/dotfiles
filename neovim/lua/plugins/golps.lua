return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {
        settings = {
          gopls = {
            formatting = {
              organizeImports = false,
              gofumpt = false,
            },
            ui = {
              completion = {
                usePlaceholders = false,
              },
            },
          },
        },
      },
    },
  },
}

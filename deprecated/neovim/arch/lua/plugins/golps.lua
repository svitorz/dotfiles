return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {
        settings = {
          gopls = {
            formatting = {
              organizeImports = true,
              gofumpt = true,
            },
            ui = {
              completion = {
                usePlaceholders = true,
              },
            },
          },
        },
      },
    },
  },
}

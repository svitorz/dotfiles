return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Aqui você pode configurar seus LSPs, por exemplo:
      require("lspconfig").lua_ls.setup({})
    end,
  }
}


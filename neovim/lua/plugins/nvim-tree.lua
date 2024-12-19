return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.cmd([[
        highlight NeoTreeNormal guibg=#0A0A0A
        highlight NeoTreeEndOfBuffer guibg=#0A0A0A
        highlight NeoTreeWinSeparator guibg=#0A0A0A guifg=#0A0A0A
        highlight NeoTreeNormal guibg=#0A0A0A
        highlight NeoTreeNormalNC guibg=#0A0A0A
        highlight Normal guibg=#0A0A0A
        highlight NormalNC guibg=#0A0A0A
    ]])
  end,
}

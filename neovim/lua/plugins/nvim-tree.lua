return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.cmd([[
        highlight NeoTreeNormal guibg=#000000
        highlight NeoTreeEndOfBuffer guibg=#000000
        highlight NeoTreeWinSeparator guibg=#000000 guifg=#000000
        highlight NeoTreeNormal guibg=#000000
        highlight NeoTreeNormalNC guibg=#000000
        highlight Normal guibg=#000000
        highlight NormalNC guibg=#000000
    ]])
  end,
}

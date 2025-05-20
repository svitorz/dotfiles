-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- desliga virtual text (as mensagens inline) e signs (os bullets na gutter)
vim.diagnostic.config({
  virtual_text = false,
  signs = false,
})

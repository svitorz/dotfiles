-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.keymap.del("n", "<leader>n")

vim.keymap.set("n", "<leader>n", ":Neotree toggle<CR>", { desc = "Toggle Neo-tree" })

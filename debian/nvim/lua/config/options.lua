-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- -- lazy.nvim
return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      explorer = {
        replace_netrw = true, -- opcional, substitui netrw
        trash = true, -- usa lixeira do sistema ao deletar
      },
      picker = {
        sources = {
          explorer = {
            -- Mostrar ocultos e ignorados por padrão
            hidden = true, -- mostra dotfiles
            ignored = false, -- não esconder arquivos ignorados pelo git
            -- outras opções do explorer podem ir aqui conforme sua necessidade
          },
        },
      },
    },
  },
}

return {
  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local lackluster = require("lackluster")
      lackluster.setup({
        disable_plugin = {
          bufferline = false,
          cmp = false,
          dashboard = false,
          flash = false,
          git_gutter = false,
          git_signs = false,
          headline = false,
          indentmini = false,
          lazy = false,
          lightbulb = false,
          lsp_config = false,
          mason = false,
          mini_diff = false,
          navic = false,
          noice = false,
          notify = false,
          oil = false,
          rainbow_delimiter = false,
          scollbar = false,
          telescope = false,
          todo_comments = false,
          tree = false,
          trouble = false,
          which_key = false,
          yanky = false,
        },
        tweak_color = {
          lack = "#888888",
          green = "#636363",
          orange = "default",
          yellow = "default",
          blue = "default",
          red = "default",
        },
        tweak_background = {
          normal = "#0A0A0A",
          telescope = "#0A0A0A",
          menu = "#0A0A0A",
          popup = "#0A0A0A",
          lualine = "#0A0A0A",
          neotree = "#0A0A0A",
        },
        tweak_highlight = {
          ["@keyword"] = { italic = true },
          spellcap = { link = "normal", overwrite = true, undercurl = false },
        },
      })

      vim.cmd.colorscheme("lackluster")
    end,
  },
}

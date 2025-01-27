return {
  "slugbyte/lackluster.nvim",
  lazy = false,
  priority = 1000,
  init = function()
    require("lackluster").setup({
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
        normal = "#000000",
        telescope = "#000000",
        menu = "#0000000",
        popup = "#000000",
        lualine = "#0000000",
        neotree = "#0000000",
      },
      tweak_syntax = {
        string = "#ffffff",
        string_escape = "default",
        comment = "#434A42",
        builtin = "default", -- builtin modules and functions
        type = "default",
        keyword = "#cccccc",
        keyword_return = "default",
        keyword_exception = "default",
      },
      tweak_highlight = {
        ["@keyword"] = { italic = true },
        spellcap = { link = "normal", overwrite = true, undercurl = false },
      },
    })
  end,
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "lackluster",
    },
  },
}

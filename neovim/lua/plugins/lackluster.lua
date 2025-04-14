return {
  "slugbyte/lackluster.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("lackluster").setup({
      disable_plugin = {
        -- sua config...
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
        builtin = "default",
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
    vim.cmd.colorscheme("lackluster")
  end,
}

return {
  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local lackluster = require("lackluster")
      lackluster.setup({
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
          -- Funções / keywords gerais
          ["@keyword.function"] = { fg = "#a277ff", italic = true },
          ["@function"] = { fg = "#ffffff" },
          ["@function.call"] = { fg = "#ffffff" },
          ["@keyword"] = { fg = "#a277ff", italic = true },
          ["@keyword.return"] = { fg = "#a277ff" },

          -- Comentários
          ["@comment"] = { fg = "#434A42", italic = true },

          -- Strings (html/blade/php)
          ["@string"] = { fg = "#ffffff" },
          ["@string.special"] = { fg = "#cccccc" },

          -- HTML tags e atributos
          ["@tag"] = { fg = "#a277ff" },
          ["@tag.delimiter"] = { fg = "#888888" },
          ["@tag.attribute"] = { fg = "#cccccc", italic = true },

          -- Variáveis Blade
          ["@variable"] = { fg = "#ffffff" },
          ["@variable.parameter"] = { fg = "#cccccc" },
          ["@variable.builtin"] = { fg = "#a277ff" },

          -- Diretivas Blade (@if, @foreach, etc.)
          ["@function.macro"] = { fg = "#a277ff", italic = true },
          ["@keyword.directive"] = { fg = "#a277ff", bold = true },

          -- Delimitadores Blade {{ }} e {!! !!}
          ["@punctuation.delimiter"] = { fg = "#888888" },

          -- Extra
          spellcap = { link = "Normal", overwrite = true, undercurl = false },
        },
      })
      vim.cmd.colorscheme("lackluster")
    end,
  },
}

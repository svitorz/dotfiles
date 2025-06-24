return {
  "danymat/neogen",
  config = true,
  languages = {
    php = {
      template = {
        annotation_convention = "phpdoc", -- O padrão para PHP
      },
    },
    go = {
      template = {
        annotation_convention = "GoDoc",
      },
    },
    java = {
      template = {
        annotation_convention = "JavaDoc",
      },
    },
  },
  dependencies = "nvim-treesitter/nvim-treesitter", -- necessário!
  cmd = "Neogen",
}

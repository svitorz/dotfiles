return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      php = { "php_cs_fixer" },
      blade = { "blade-formatter" },
      go = { "gofmt" },
    },
    format_on_save = {
      lsp_fallback = true,
      timeout_ms = 1000,
    },
  },
}

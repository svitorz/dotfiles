return {
  -- Extras para linguagens e debugging
  -- { import = "lazyvim.plugins.extras.lang.typescript" }, -- JS/TS + integração com typescript.nvim
  -- { import = "lazyvim.plugins.extras.lang.tailwind" }, -- TailwindCSS
  -- { import = "lazyvim.plugins.extras.lang.vue" }, -- Vue (Volar)
  -- { import = "lazyvim.plugins.extras.lang.go" }, -- Go (gopls, dap, etc.)
  -- { import = "lazyvim.plugins.extras.lang.java" }, -- Java (jdtls, dap)
  -- { import = "lazyvim.plugins.extras.lang.json" }, -- JSON + schemastore
  -- { import = "lazyvim.plugins.extras.dap.core" }, -- Debugging UI/infra

  -- LSP manual para linguagens sem extra oficial no LazyVim

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            -- Only set this keymap for servers that support code actions
            { "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action", has = "codeAction" },
            -- Multiple capabilities
            {
              "<leader>cR",
              function()
                Snacks.rename.rename_file()
              end,
              desc = "Rename File",
              has = { "workspace/didRenameFiles", "workspace/willRenameFiles" },
            },
          },
        },
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "php",
        "go",
        "clojure",
        "java",
        "python",
        "query",
        "regex",
        "vim",
        "vue",
        "yaml",
      })
    end,
  },

  {
    "nvim-mini/mini.pairs",
    event = "VeryLazy",
    opts = {
      modes = { insert = true, command = true, terminal = false },
      -- skip autopair when next character is one of these
      skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
      -- skip autopair when the cursor is inside these treesitter nodes
      skip_ts = { "string" },
      -- skip autopair when next character is closing pair
      -- and there are more closing pairs than opening pairs
      skip_unbalanced = true,
      -- better deal with markdown code blocks
      markdown = true,
    },
    config = function(_, opts)
      LazyVim.mini.pairs(opts)
    end,
  },

  {
    "folke/ts-comments.nvim",
    event = "VeryLazy",
    opts = {},
  },

  {
    "folke/lazydev.nvim",
    ft = "lua",
    cmd = "LazyDev",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        { path = "LazyVim", words = { "LazyVim" } },
        { path = "snacks.nvim", words = { "Snacks" } },
        { path = "lazy.nvim", words = { "LazyVim" } },
      },
    },
  },
}

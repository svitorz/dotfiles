return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,

      default_component_configs = {
        indent = {
          padding = 1,
        },
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
        },
        name = {
          trailing_slash = false,
          use_git_status_colors = true,
        },
        git_status = {
          symbols = {
            added = "",
            deleted = "",
            modified = "",
            renamed = "➜",
            untracked = "★",
            ignored = "◌",
            unstaged = "✗",
            staged = "✓",
            conflict = "",
          },
        },
      },

      -- Configuração de cores com fundo preto
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function()
            -- Definir o fundo como preto
            vim.cmd("highlight NeoTreeNormal guibg=#000000")
            vim.cmd("highlight NeoTreeNormalNC guibg=#000000")
            vim.cmd("highlight NeoTreeVertSplit guifg=#444444 guibg=#000000")
            vim.cmd("highlight NeoTreeWinSeparator guifg=#444444 guibg=#000000")

            -- Definir cores para os componentes dentro do Neo-tree
            vim.cmd("highlight NeoTreeRootName guifg=#cccccc guibg=#000000")
            vim.cmd("highlight NeoTreeFileName guifg=#ffffff guibg=#000000")
            vim.cmd("highlight NeoTreeFileNameOpened guifg=#ffffff guibg=#000000")
            vim.cmd("highlight NeoTreeFloatNormal guibg=#000000")
            vim.cmd("highlight NeoTreeFloatBorder guifg=#444444 guibg=#000000")
            vim.cmd("highlight NeoTreeGitAdded guifg=#5faf5f guibg=#000000")
            vim.cmd("highlight NeoTreeGitModified guifg=#d7af5f guibg=#000000")
            vim.cmd("highlight NeoTreeGitDeleted guifg=#ff5555 guibg=#000000")
          end,
        },
      },

      window = {
        position = "left",
        width = 30,
        background = "#000000", -- Adicionado da sua configuração
        mappings = {
          ["<space>"] = "toggle_node",
          ["<2-LeftMouse>"] = "open",
          ["<cr>"] = "open",
          ["s"] = "open_split",
          ["v"] = "open_vsplit",
          ["t"] = "open_tabnew",
          ["C"] = "close_node",
          ["a"] = "add",
          ["d"] = "delete",
          ["r"] = "rename",
          ["y"] = "copy_to_clipboard",
          ["x"] = "cut_to_clipboard",
          ["p"] = "paste_from_clipboard",
          ["c"] = "copy",
          ["m"] = "move",
          ["q"] = "close_window",
          ["R"] = "refresh",
        },
      },

      filesystem = {
        filtered_items = {
          visible = true, -- Da sua configuração
          hide_dotfiles = false, -- Da sua configuração
          hide_gitignored = false, -- Da sua configuração
          hide_by_name = {
            ".DS_Store",
            "thumbs.db",
            "node_modules",
          },
        },
        follow_current_file = true,
        hijack_netrw_behavior = "open_current",
        use_libuv_file_watcher = true,
      },

      buffers = {
        follow_current_file = true,
        group_empty_dirs = true,
      },

      git_status = {
        window = {
          position = "float",
        },
      },
    })

    -- Mapeamentos de teclado globais para o Neo-tree
    vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>o", ":Neotree focus<CR>", { noremap = true, silent = true })
  end,
}

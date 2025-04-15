-- Este arquivo é carregado após todos os plugins no LazyVim

local set = vim.api.nvim_set_hl

-- Fundo transparente e cores neutras
set(0, "Normal", { fg = "#888888", bg = "NONE" })
set(0, "NormalNC", { fg = "#888888", bg = "NONE" })
set(0, "NormalFloat", { fg = "#888888", bg = "NONE" })
set(0, "FloatBorder", { fg = "#555555", bg = "NONE" })
set(0, "VertSplit", { fg = "#333333", bg = "NONE" })
set(0, "WinSeparator", { fg = "#333333", bg = "NONE" })

-- Linhas e cursores
set(0, "CursorLine", { bg = "#111111" })
set(0, "CursorLineNr", { fg = "#66cccc", bold = true })
set(0, "LineNr", { fg = "#555555" })

-- Seleção e busca
set(0, "Visual", { bg = "#333333" })
set(0, "Search", { bg = "#66cccc", fg = "#000000" })
set(0, "IncSearch", { bg = "#66cccc", fg = "#000000" })

-- Comentários, strings, keywords
set(0, "Comment", { fg = "#555555", italic = true })
set(0, "String", { fg = "#66cc66" })
set(0, "Keyword", { fg = "#6699cc", bold = true })
set(0, "Function", { fg = "#66cccc" })
set(0, "Identifier", { fg = "#ffffff" })
set(0, "Type", { fg = "#66ccff" })

-- LSP
set(0, "DiagnosticError", { fg = "#cc6666" })
set(0, "DiagnosticWarn", { fg = "#f0c674" })
set(0, "DiagnosticInfo", { fg = "#66cccc" })
set(0, "DiagnosticHint", { fg = "#b294bb" })

-- Neo-tree customizado
set(0, "NeoTreeNormal", { fg = "#888888", bg = "#000000" })
set(0, "NeoTreeNormalNC", { fg = "#888888", bg = "#000000" })
set(0, "NeoTreeDirectoryName", { fg = "#66cccc" })
set(0, "NeoTreeFileName", { fg = "#ffffff" })
set(0, "NeoTreeFileIcon", { fg = "#888888" })
set(0, "NeoTreeGitModified", { fg = "#f0c674" })
set(0, "NeoTreeGitAdded", { fg = "#66cc66" })
set(0, "NeoTreeGitDeleted", { fg = "#cc6666" })
set(0, "NeoTreeTitleBar", { fg = "#66cccc", bg = "NONE" })

-- Telescope
set(0, "TelescopeBorder", { fg = "#555555", bg = "NONE" })
set(0, "TelescopePromptBorder", { fg = "#66cccc", bg = "NONE" })
set(0, "TelescopeMatching", { fg = "#66ccff", bold = true })
set(0, "TelescopeSelection", { bg = "#1a1a1a", fg = "#ffffff" })

-- NvimTree fallback (caso use)
set(0, "NvimTreeNormal", { fg = "#888888", bg = "NONE" })

-- StatusLine
set(0, "StatusLine", { fg = "#ffffff", bg = "#111111" })
set(0, "StatusLineNC", { fg = "#888888", bg = "#111111" })

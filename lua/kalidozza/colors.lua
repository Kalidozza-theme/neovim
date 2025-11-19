local M = {}

M.palette = {
  ---------------------------------------------------------------------------
  -- CORE BACKGROUND SHADES (dark → light)
  bg0 = "#0A0400", -- extreme dark background
  bg1 = "#0d0701", -- main editor background
  bg2 = "#1a1006", -- selection / cursorline background
  bg3 = "#2a1a0a", -- elevated UI surfaces

  ---------------------------------------------------------------------------
  -- CORE FOREGROUNDS (bright → dim)
  fg0 = "#FFF7DC", -- brightest (titles, emphasis)
  fg1 = "#FFF0C2", -- main readable text
  fg2 = "#D7C38F", -- secondary text
  fg3 = "#A38C65", -- subtle/inactive text

  ---------------------------------------------------------------------------
  -- SELECTION & MISC
  selbg = "#3b240d", -- selection background
  selfg = "#FFF0C2", -- selection foreground
  comment = "#8B7653", -- comments / annotations

  ---------------------------------------------------------------------------
  -- ACCENT / SEMANTIC COLOR SLOTS
  color1 = "#bd4e0f", -- error / strong statement
  color2 = "#D07711", -- primary accent / info highlight
  color3 = "#FCB54A", -- attention / todo / highlight
  color4 = "#EBA937", -- constants / modified files
  color5 = "#FFD47E", -- strings / soft alerts
  color6 = "#FFB100", -- keywords / structural tokens

  ---------------------------------------------------------------------------
  -- UI DECORATIVE & LOW EMPHASIS ELEMENTS
  uic1 = "#4A3925", -- borders / separators / low-emphasis UI
}

function M.apply()
  local p = M.palette
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.g.colors_name = "kalidozza"

  ---------------------------------------------------------------------------
  -- BASIC EDITOR HIGHLIGHTS
  vim.api.nvim_set_hl(0, "Normal", { fg = p.fg1, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = p.bg2 })
  vim.api.nvim_set_hl(0, "Cursor", { fg = p.bg1, bg = p.color3 })
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = p.bg2 })
  vim.api.nvim_set_hl(0, "Comment", { fg = p.comment, italic = true })

  ---------------------------------------------------------------------------
  -- SYNTAX HIGHLIGHTS
  vim.api.nvim_set_hl(0, "Statement", { fg = p.color1 })
  vim.api.nvim_set_hl(0, "Keyword", { fg = p.color6, bold = true })
  vim.api.nvim_set_hl(0, "Operator", { fg = p.color6 })
  vim.api.nvim_set_hl(0, "Constant", { fg = p.color4 })
  vim.api.nvim_set_hl(0, "Number", { fg = p.color4 })
  vim.api.nvim_set_hl(0, "Boolean", { fg = p.color4 })
  vim.api.nvim_set_hl(0, "Type", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "Structure", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "Class", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "String", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "Special", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "Function", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "Identifier", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "PreProc", { fg = p.color6 })
  vim.api.nvim_set_hl(0, "Underlined", { fg = p.color4, underline = true })
  vim.api.nvim_set_hl(0, "Todo", { fg = p.color3, bg = p.bg1, bold = true })

  ---------------------------------------------------------------------------
  -- UI ELEMENTS
  vim.api.nvim_set_hl(0, "LineNr", { fg = p.fg3 })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.color3, bold = true })
  vim.api.nvim_set_hl(0, "Visual", { bg = p.selbg, fg = p.selfg })
  vim.api.nvim_set_hl(0, "Search", { fg = p.bg1, bg = p.color3 })
  vim.api.nvim_set_hl(0, "IncSearch", { fg = p.bg1, bg = p.color2 })
  vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg1, bg = p.bg3 })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = p.fg3, bg = p.bg2 })
  vim.api.nvim_set_hl(0, "VertSplit", { fg = p.uic1 })
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = p.uic1 })
  vim.api.nvim_set_hl(0, "TabLine", { fg = p.fg3, bg = p.bg2 })
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = p.bg1 })
  vim.api.nvim_set_hl(0, "TabLineSel", { fg = p.fg1, bg = p.bg3, bold = true })

  ---------------------------------------------------------------------------
  -- POPUP / COMPLETION MENUS
  vim.api.nvim_set_hl(0, "Pmenu", { fg = p.fg2, bg = p.bg3 })
  vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.fg1, bg = p.bg2 })
  vim.api.nvim_set_hl(0, "PmenuSbar", { bg = p.bg2 })
  vim.api.nvim_set_hl(0, "PmenuThumb", { bg = p.fg3 })

  ---------------------------------------------------------------------------
  -- DIAGNOSTICS
  vim.api.nvim_set_hl(0, "Error", { fg = p.color1, bold = true })
  vim.api.nvim_set_hl(0, "ErrorMsg", { fg = p.color1, bold = true })
  vim.api.nvim_set_hl(0, "WarningMsg", { fg = p.color3, bold = true })
  vim.api.nvim_set_hl(0, "ModeMsg", { fg = p.fg2 })

  -- Lazy config (LazyVim)
  vim.api.nvim_set_hl(0, "NormalFloat", { fg = p.fg1, bg = p.bg3 })
  ---------------------------------------------------------------------------
  -- EXTERNAL PLUGIN HOOKS
  require("kalidozza.treesitter").apply()
  require("kalidozza.snacks").apply()
  require("kalidozza.todo-comments").apply()
  require("kalidozza.noice").apply()
  require("kalidozza.neotree").apply()
end

return M

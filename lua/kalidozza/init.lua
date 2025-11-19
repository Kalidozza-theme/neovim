local M = {}

function M.colorscheme()
  -- Load the main colors
  require("kalidozza.colors").apply()
end

function M.lualine()
  return require("kalidozza.lualine")
end

function M.snacks()
  require("kalidozza.snacks").apply()
end

function M.treesitter()
  require("nvim-treesitter.configs").setup({
    highlight = { enable = true },
  })
end

return M

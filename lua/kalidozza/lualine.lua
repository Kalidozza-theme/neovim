local colors = require("kalidozza.colors").palette

local kalidozza = {}

kalidozza.normal = {
  a = { fg = colors.bg1, bg = colors.color2, gui = "bold" },
  b = { fg = colors.fg1, bg = "#2A2A2A" },
  c = { fg = colors.uic1, bg = "#1A1A1A" },
}

kalidozza.insert = {
  a = { fg = colors.bg1, bg = colors.color1, gui = "bold" },
}

kalidozza.visual = {
  a = { fg = colors.bg1, bg = colors.color6, gui = "bold" },
}

kalidozza.replace = {
  a = { fg = colors.bg1, bg = colors.color5, gui = "bold" },
}

kalidozza.command = {
  a = { fg = colors.bg1, bg = colors.color3, gui = "bold" },
}

kalidozza.inactive = {
  a = { fg = colors.uic1, bg = colors.bg1 },
  b = { fg = colors.uic1, bg = colors.bg1 },
  c = { fg = colors.uic1, bg = colors.bg1 },
}

return kalidozza 

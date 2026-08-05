local M = {};

local colors = {
  bg        = "#090000",
  fg        = "#b80f0a",

  gray0     = "#1a0000",
  gray1     = "#260000",
  gray2     = "#330000",
  gray3     = "#4d0000",
  gray4     = "#660000",
  gray5     = "#800000",
  gray6     = "#a52a2a",
  gray7     = "#c04040",
  gray8     = "#e0a0a0",
  gray9     = "#f4a460",
  gray10    = "#ffd0c0",

  red       = "#ff0080",
  lred      = "#ff4da6",

  orange    = "#ff8000",
  yellow    = "#f4a460",

  green     = "#ff0000",   -- absichtlich rot (dein schema)
  lgreen    = "#ff4d4d",

  cyan      = "#800080",   -- dein purple als "cyan"
  lcyan     = "#a64ca6",

  blue      = "#ff8000",   -- orange statt blau
  lblue     = "#ffb366",

  magenta   = "#960018",
  lmagenta  = "#c7153a",
}

function M.colorscheme()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")

  vim.o.background = "dark";
  vim.g.colors_name = "code_red";

  local set = vim.api.nvim_set_hl

  -- ui
  set(0, "Normal",        { fg = colors.fg, bg = colors.bg })
  set(0, "NormalFloat",   { fg = colors.fg, bg = colors.bg })
  set(0, "FloatBorder",   { fg = colors.fg, bg = colors.bg })
  set(0, "CursorLine",    { bg = colors.gray2 })
  set(0, "Visual",        { bg = colors.gray3 })
  set(0, "Search",        { fg = colors.bg, bg = colors.orange })
  set(0, "IncSearch",     { fg = colors.bg, bg = colors.orange })
  set(0, "StatusLine",    { bg = colors.gray2 })
  set(0, "StatusLineNC",  { bg = colors.orange })
  set(0, "VertSplit",     { fg = colors.gray8 })
  set(0, "WinSeparator",  { fg = colors.gray8 })
  set(0, "LineNr",        { fg = colors.gray6 })
  set(0, "CursorLineNr",  { fg = colors.orange, bold = true })
  set(0, "SignColumn",    { bg = colors.bg })
  set(0, "Folded",        { fg = colors.gray8, bg = colors.gray3 })

  -- popup
  set(0, "Pmenu",         { fg = colors.fg, bg = colors.gray10 })
  set(0, "PmenuSel",      { fg = colors.bg, bg = colors.orange })
  set(0, "PmenuSbar",     { bg = colors.gray10 })
  set(0, "PmenuThumb",    { bg = colors.orange })

  -- syntax
  set(0, "Comment",       { fg = colors.gray8, italic = true })
  set(0, "Constant",      { fg = colors.magenta })
  set(0, "String",        { fg = colors.green })
  set(0, "Identifier",    { fg = colors.blue })
  set(0, "Function",      { fg = colors.yellow })
  set(0, "Statement",     { fg = colors.red })
  set(0, "Type",          { fg = colors.cyan, bold = true })
  set(0, "Special",       { fg = colors.yellow })
  set(0, "Error",         { fg = colors.red, bold = true })
  set(0, "Keyword",       { fg = colors.red })
  set(0, "Variable",      { fg = colors.fg })
  set(0, "TSKeyword",     { fg = colors.red })
  set(0, "TSFunction",    { fg = colors.yellow })
  set(0, "TSVariable",    { fg = colors.fg })
  set(0, "TSType",        { fg = colors.cyan })

  -- blink
  set(0, "BlinkCmpMenu",            { bg = colors.gray1 })
  set(0, "BlinkCmpMenuBorder",      { fg = colors.gray6, bg = colors.gray1 })
  set(0, "BlinkCmpMenuSelection",   { fg = colors.bg, bg = colors.orange })
  set(0, "BlinkCmpLabel",           { fg = colors.fg })
  set(0, "BlinkCmpLabelDetail",     { fg = colors.gray7 })
  set(0, "BlinkCmpLabelDescription",{ fg = colors.gray8 })
  set(0, "BlinkCmpLabelMatch",      { fg = colors.orange, bold = true })
  set(0, "BlinkCmpKind",            { fg = colors.cyan })
  set(0, "BlinkCmpDoc",             { fg = colors.fg, bg = colors.gray2 })
  set(0, "BlinkCmpDocBorder",       { fg = colors.gray5, bg = colors.gray2 })  

  if package.loaded['lualine'] then
    require('lualine').setup({
      options = { theme = 'auto' },
    })
  end

end

return M

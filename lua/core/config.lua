local g = vim.g
local o = vim.o

vim.o.termguicolors = true

-- Tabs/Spaces

o.tabstop     = 4
o.softtabstop = 4
o.shiftwidth  = 4

-- Number Lines

o.number         = true
o.relativenumber = true

-- Misc visual

o.cursorline = true
o.showmode   = false

o.scrolloff = 2

-- Splits

o.splitright = true
o.splitbelow = true

-- Mouse

o.mouse = 'a'

-- Term

vim.cmd [[
	au TermOpen * setlocal nonumber norelativenumber foldcolumn=1 nocursorline
]]

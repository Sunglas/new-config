local g = vim.g
local o = vim.o

-- general settings
vim.api.nvim_command('filetype plugin indent on')
vim.api.nvim_command('set colorcolumn=80')
vim.cmd [[colorscheme moonfly]]

-- editor settings
o.ignorecase	= true
o.smartcase	= true
o.ruler		= true
o.ttyfast	= true
o.confirm	= true
o.shiftwidth	= 8
o.softtabstop	= 8
o.expandtab	= false
o.cindent	= true
o.wrap		= false
-- o.textwidth	= 80
o.list		= true
o.viewoptions	= 'cursor,folds,slash,unix'
o.jumpoptions	= 'view'
o.termguicolors = true

-- line numbers
o.relativenumber  = true
o.number        = true
o.numberwidth   = 2
o.signcolumn    = 'yes:1'
o.cursorline    = true

-- set same clipboard as OS
o.clipboard   = 'unnamedplus'

-- neovide settings
-- Set transparency and background color (title bar color)
g.neovide_transparency = 1.0
g.neovide_transparency_point = 1.0
g.neovide_background_color = "#080808"

-- fold options
o.foldcolumn = '1'
o.foldlevel = 99
o.foldlevelstart = 99
vim.foldenable = true

-- neovide
g.neovide_background_color = "#080808"

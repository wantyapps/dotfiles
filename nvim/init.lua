-- Setting the <leader> key
vim.g.mapleader = ";"

--[[
Loading options (for example 'set nu' in Vimscript) from a file
]]
require('options')

-- Loading plugins
require('plugins')

--[[
Setting colorscheme in lua, similar to `vim.cmd("colorscheme gruvbox")`
]]
vim.g.gruvbox_italic = 1
vim.g.colors_name = "gruvbox"

--[[
Telescope.nvim config
]]
require('telescope')

--[[
Font and color config (italic, keywords etc.)
]]
require('colors')

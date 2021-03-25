-- Setting the <leader> key
vim.g.mapleader = ";"

--[[
Loading options (for example 'set nu' in Vimscript) from a file
]]
require('wanty.options')

-- Loading plugins
require('wanty.plugins')

--[[
Setting colorscheme in lua, similar to `vim.cmd("colorscheme gruvbox")`
]]
vim.g.colors_name = "gruvbox"

--[[
Telescope.nvim config
]]
require('telescope.telescope_init')

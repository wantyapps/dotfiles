-- Setting the <leader> key
vim.g.mapleader = ";"

-- TEMP
-- vim.cmd("source ~/.config/nvim/plugins.vim")

--[[
Did not find any way of changing colorscheme in lua, so using vim.cmd()]
]]
vim.cmd("colorscheme gruvbox")

--[[
Loading options (for example 'set nu' in Vimscript) from a file
]]
require('options')

--[[
Font config (italic, keywords etc.)
]]
require('colors')

--[[
Telescope.nvim config
]]
require('telescope')

require('plugins')

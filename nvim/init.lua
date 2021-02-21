-- Setting the <leader> key
vim.g.mapleader = ";"

--[[
I searched a lot, couldn't find a way to load Vim-plug
plugins with lua.
]]
vim.cmd("source ~/.config/nvim/plugins.vim")

--[[
Did not find any way of changing colorscheme in lua, so using vim.cmd()]
]]
vim.cmd("colorscheme nord")

--[[
Loading options (for example 'set nu' in Vimscript) from a file
]]
require('options')

--[[
Airline config
]]
require('airline_conf')

--[[
Font config (italic, keywords etc.)
]]
require('colors')

--[[
Telescope.nvim config
]]
require('telescope')

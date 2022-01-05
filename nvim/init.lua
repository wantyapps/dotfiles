-- Setting the <leader> key
vim.g.mapleader = ';'

--[[
--Loading options (for example 'set nu' in Vimscript) from a file
--]]
require('wanty.options')

-- Loading plugins
require('wanty.plugins')

-- Telescope.nvim Configuration
require('telescope.telescope_init')

-- Setting the colorscheme
vim.cmd('colorscheme tokyonight')

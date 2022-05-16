-- Setting the <leader> key
vim.g.mapleader = ','

require('impatient')
--[[
--Loading options (for example 'set nu' in Vimscript) from a file
--]]
require('wanty.options')

-- Loading plugins
require('wanty.plugins')

-- Telescope.nvim Configuration
require('telescope.telescope_init')

-- Setting the colorscheme
vim.cmd('colorscheme nord')

-- GOYO
vim.cmd('autocmd vimenter *.md Goyo')

vim.cmd('highlight clear SignColumn')

vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
vim.cmd('highlight Fold guibg=NONE ctermbg=NONE')

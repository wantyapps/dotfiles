let mapleader=";"
source plugins.vim
colorscheme nord

set noswapfile
set nu
set rnu
set termguicolors
set cursorline
set spell
set mouse=a

lua require('telescope_init')

source plug_config.vim

" Font stuff
highlight Comment cterm=italic gui=italic
highlight Statement cterm=italic gui=italic
highlight Function cterm=italic gui=italic
highlight Keyword cterm=italic gui=italic

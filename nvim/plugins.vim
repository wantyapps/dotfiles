call plug#begin('~/local/share/nvim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'ap/vim-css-color'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'voldikss/vim-floaterm'
Plug 'airblade/vim-gitgutter'
Plug 'arcticicestudio/nord-vim'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'gkeep/iceberg-dark'
Plug 'cocopon/iceberg.vim'
Plug 'itchyny/lightline.vim'
" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'nvim-lua/completion-nvim'
" telescope.nvim
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" My plugins!
Plug 'wantyapps/vim-fountainpen'
" Secret writing
Plug 'ernstwi/vim-secret'
call plug#end()

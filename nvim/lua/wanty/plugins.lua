vim.cmd('packadd packer.nvim')

return require('packer').startup(function()
	use {'wbthomason/packer.nvim', opt = true}
	use 'lewis6991/gitsigns.nvim'
	use 'folke/tokyonight.nvim'
	use 'tpope/vim-commentary'
	use 'tpope/vim-dispatch'
	use 'ap/vim-css-color'
	use 'voldikss/vim-floaterm'
	use 'kyazdani42/nvim-web-devicons'
	use 'sainnhe/artify.vim'
	use 'itchyny/vim-gitbranch'
	use 'rmolin88/pomodoro.vim'
	use 'dracula/vim'
	use 'puremourning/vimspector'
	use 'SirVer/ultisnips'
	use 'quangnguyen30192/cmp-nvim-ultisnips'
	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'nvim-lua/lsp_extensions.nvim'
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-vsnip',
			'hrsh7th/vim-vsnip',
			'ray-x/cmp-treesitter',
			'onsails/lspkind-nvim'
		},
	}
	use 'nvim-lua/lsp-status.nvim'
	-- Telescope.nvim
	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-vimspector.nvim'
	-- Secret writing
	use 'ernstwi/vim-secret'
	-- TJ!!!
	use 'tjdevries/nlua.nvim'
	-- Buffer hiding-kinda
	use 'TaDaa/vimade'
	-- Lazygit
	use 'kdheepak/lazygit.nvim'
end)

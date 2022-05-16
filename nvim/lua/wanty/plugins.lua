vim.cmd('packadd packer.nvim')

return require('packer').startup(function()
	use {'wbthomason/packer.nvim', opt = true}
	use 'lewis6991/gitsigns.nvim'
	use 'folke/zen-mode.nvim'
	use 'ghifarit53/tokyonight-vim'
	use 'preservim/nerdtree'
	use 'romgrk/barbar.nvim'
	use 'Xuyuanp/nerdtree-git-plugin'
	use 'lewis6991/impatient.nvim'
	use 'arcticicestudio/nord-vim'
	use 'tpope/vim-commentary'
	-- use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	use 'tpope/vim-dispatch'
	use 'kshenoy/vim-signature'
	use 'SmiteshP/nvim-gps'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}
	use 'morhetz/gruvbox'
	use 'tpope/vim-fugitive'
	-- use 'j-hui/fidget.nvim'
	use 'ap/vim-css-color'
	use 'liuchengxu/vista.vim'
	use 'voldikss/vim-floaterm'
	use 'kyazdani42/nvim-web-devicons'
	use {
		'VonHeikemen/fine-cmdline.nvim',
		requires = {
			{'MunifTanjim/nui.nvim'}
		}
	}
	use 'sainnhe/artify.vim'
	use 'itchyny/vim-gitbranch'
	use 'junegunn/goyo.vim'
	use 'rmolin88/pomodoro.vim'
	use 'rust-lang/rust.vim'
	use 'dracula/vim'
	use 'skywind3000/asyncrun.vim'
	-- Discord Presence
	-- use 'andweeb/presence.nvim'
	use 'puremourning/vimspector'
	use 'kosayoda/nvim-lightbulb'
	use 'SirVer/ultisnips'
	use 'quangnguyen30192/cmp-nvim-ultisnips'
	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'nvim-lua/lsp_extensions.nvim'
	use({
		"catppuccin/nvim",
		as = "catppuccin"
	})
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'nvim-treesitter/playground'
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
	-- Lightline
	-- use 'itchyny/lightline.vim'
	-- Secret writing
	use 'ernstwi/vim-secret'
	-- TJ!!!
	use 'tjdevries/nlua.nvim'
	-- Lazygit
	use 'kdheepak/lazygit.nvim'
	-- BLACK
	use 'metalelf0/base16-black-metal-scheme'
end)

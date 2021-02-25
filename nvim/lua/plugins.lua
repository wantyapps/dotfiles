vim.cmd("packadd packer.nvim")

return require("packer").startup(function()
	use "tpope/vim-commentary"
	use "tpope/vim-dispatch"
	use "tpope/vim-fugitive"
	use "ap/vim-css-color"
	use "voldikss/vim-floaterm"
	use "airblade/vim-gitgutter"
	use "arcticicestudio/nord-vim"
	use "kyazdani42/nvim-web-devicons"
	use "gkeep/iceberg-dark"
	use "cocopon/iceberg.vim"
	use "itchyny/lightline.vim"
	use "morhetz/gruvbox"
	-- LSP
	use "neovim/nvim-lspconfig"
	use "nvim-lua/lsp_extensions.nvim"
	use "nvim-lua/completion-nvim"
	-- Telescope.nvim
	use "nvim-lua/popup.nvim"
	use "nvim-lua/plenary.nvim"
	use "nvim-telescope/telescope.nvim"
	-- My plugins
	use "wantyapps/vim-fountainpen"
	-- Secret writing
	use "ernstwi/vim-secret"
end)

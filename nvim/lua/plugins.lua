vim.cmd("packadd packer.nvim")

return require("packer").startup(function()
	use {"wbthomason/packer.nvim", opt = true}

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
	use "morhetz/gruvbox"
	use "spolu/dwm.vim"
	-- Lightline (statusline)
	use "itchyny/lightline.vim"
	use "sainnhe/artify.vim"
	use "itchyny/vim-gitbranch"
	use "macthecadillac/lightline-gitdiff"
	use "albertomontesg/lightline-asyncrun"
	use "rmolin88/pomodoro.vim"
	use "nvim-treesitter/nvim-treesitter"
	use "dracula/vim"
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
	-- use "wantyapps/WantyPlugin"
	use {"wantyapps/WantyPlugin", branch = "dev"}
	-- Secret writing
	use "ernstwi/vim-secret"
end)

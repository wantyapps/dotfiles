-- vim:fileencoding=utf-8:ft=lua:foldmethod=marker
local opt = vim.o
local wopt = vim.wo
local bopt = vim.bo
local map = vim.api.nvim_set_keymap
local g = vim.g

-- Options {{{
opt.swapfile           = false
wopt.number            = true
wopt.relativenumber    = true
wopt.cursorline        = true
wopt.spell             = true
opt.hidden             = true
opt.cmdheight          = 2
opt.updatetime         = 300
opt.showmode           = false
opt.termguicolors      = true
g.netrw_dirhistmax     = 0
wopt.signcolumn        = "yes"
-- }}}

-- Keymapping Stuff {{{
options = { noremap = true }
map('n', '<leader>ff', '<cmd>Telescope file_browser<cr>', options)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', options)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', options)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', options)
map('n', '<leader>fc', '<cmd>Telescope commands<cr>', options)
map('n', '<leader>fcs', '<cmd>Telescope colorscheme<cr>', options)
map('n', '<leader>fbi', '<cmd>Telescope builtin<cr>', options)
-- Floaterm keymap
map('n', '<leader>,', '<cmd>FloatermNew<cr>', options)
-- LSP hover and rename
vim.cmd('nnoremap <silent> Q     <cmd>lua vim.lsp.buf.hover()<CR>')
vim.cmd('nnoremap <silent> Y     <cmd>lua vim.lsp.buf.rename()<CR>')
-- Tab controls
map('n', '<leader>tl', '<cmd>tabl<cr>', options)
map('n', '<leader>tr', '<cmd>tabl<cr>', options)
--}}}

-- Plugin Config {{{
-- Completion Config {{{
-- Mappings in vim, inoremap was complicated
vim.cmd('inoremap <expr> <Tab>   pumvisible() ? "\\<C-n>" : "\\<Tab>"')
vim.cmd('inoremap <expr> <S-Tab> pumvisible() ? "\\<C-p>" : "\\<S-Tab>"')

-- Some more things I don't know how to set in lua
vim.cmd('autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif')
-- }}}

-- LSP Config {{{
-- Again, still learning how to set things in lua
vim.cmd('set completeopt=menuone,noinsert,noselect')
vim.cmd('set shortmess+=c')

-- LSP server configuration

-- Rust
local nvim_lsp = require'lspconfig'

local on_attach = function(client)
    require'completion'.on_attach(client)
end

nvim_lsp.rls.setup({ on_attach=on_attach })

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)

-- Go
local nvim_lsp = require'lspconfig'

local on_attach = function(client)
	require'completion'.on_attach(client)
end

nvim_lsp.gopls.setup({ on_attach=on_attach })

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
		virtual_text = true,
		signs = true,
		update_in_insert = true,
	}
)

-- C/C++
local nvim_lsp = require'lspconfig'

local on_attach = function(client)
	require'completion'.on_attach(client)
end

nvim_lsp.ccls.setup({ on_attach=on_attach })

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
		virtual_text = true,
		signs = true,
		update_in_insert = true,
	}
)

-- JS
local nvim_lsp = require'lspconfig'

local on_attach = function(client)
	require'completion'.on_attach(client)
end

nvim_lsp.tsserver.setup({ on_attach=on_attach })

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
		virtual_text = true,
		signs = true,
		update_in_insert = true,
	}
)

-- Docker
local nvim_lsp = require'lspconfig'

local on_attach = function(client)
	require'completion'.on_attach(client)
end

nvim_lsp.dockerls.setup({ on_attach=on_attach })

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
		virtual_text = true,
		signs = true,
		update_in_insert = true,
	}
)

-- Python
local nvim_lsp = require'lspconfig'

local on_attach = function(client)
	require'completion'.on_attach(client)
end

nvim_lsp.jedi_language_server.setup({ on_attach=on_attach })

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
		virtual_text = true,
		signs = true,
		update_in_insert = true,
	}
)

-- Vimscript
local nvim_lsp = require'lspconfig'

local on_attach = function(client)
	require'completion'.on_attach(client)
end

nvim_lsp.vimls.setup({ on_attach=on_attach })

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
		virtual_text = true,
		signs = true,
		update_in_insert = true,
	}
)

-- Lua
local nvim_lsp = require'lspconfig'

local on_attach = function(client)
	require'completion'.on_attach(client)
end

-- require('nlua.lsp.nvim').setup({ on_attach=on_attach })

require('nlua.lsp.nvim').setup(require('lspconfig'), {
	on_attach = on_attach,
})

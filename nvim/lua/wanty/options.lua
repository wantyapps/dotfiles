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
opt.pumblend           = 10
-- }}}

-- Keymapping Stuff {{{
local options = { noremap = true }
map('n', '<leader>ff', '<cmd>Telescope file_browser<cr>', options)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', options)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', options)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', options)
map('n', '<leader>fc', '<cmd>Telescope commands<cr>', options)
map('n', '<leader>fcs', '<cmd>Telescope colorscheme<cr>', options)
map('n', '<leader>fbi', '<cmd>Telescope builtin<cr>', options)
map('n', '<leader>gg',  '<cmd>LazyGit<cr>', options)
-- Floaterm keymap
map('n', '<leader>,', '<cmd>FloatermNew<cr>', options)
-- LSP hover and rename
vim.cmd('nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>')
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

-- ExpressLine Config {{{

local builtin = require('el.builtin')
local extensions = require('el.extensions')
local sections = require('el.sections')
local subscribe = require('el.subscribe')
local lsp_statusline = require('el.plugins.lsp_status')
local helper = require('el.helper')

local has_lsp_extensions, ws_diagnostics = pcall(require, 'lsp_extensions.workspace.diagnostic')

-- TODO: Spinning planet extension. Integrated w/ telescope.
-- ◐ ◓ ◑ ◒
-- 🌛︎🌝︎🌜︎🌚︎
-- Show telescope icon / emoji when you open it as well

local git_icon = subscribe.buf_autocmd("el_file_icon", "BufRead", function(_, bufnr)
  local icon = extensions.file_icon(_, bufnr)
  if icon then
    return icon .. ' '
  end

  return ''
end)

local git_branch = subscribe.buf_autocmd(
  "el_git_branch",
  "BufEnter",
  function(window, buffer)
    local branch = extensions.git_branch(window, buffer)
    if branch then
      return ' ' .. extensions.git_icon() .. ' ' .. branch
    end
  end
)

local git_changes = subscribe.buf_autocmd(
  "el_git_changes",
  "BufWritePost",
  function(window, buffer)
    return extensions.git_changes(window, buffer)
  end
)

local ws_diagnostic_counts = function(_, buffer)
  if not has_lsp_extensions then
    return ''
  end

  local messages = {}

  local error_count = ws_diagnostics.get_count(buffer.bufnr, "Error")

  local x = "⬤"
  if error_count == 0 then
    -- pass
  elseif error_count < 5 then
    table.insert(messages, string.format('%s#%s#%s%%*', '%', "StatuslineError" .. error_count, x))
  else
    table.insert(messages, string.format('%s#%s#%s%%*', '%', "StatuslineError5", x))
  end

  return table.concat(messages, "")
end

local show_current_func = function(window, buffer)
  if buffer.filetype == 'lua' then
    return ''
  end

  return lsp_statusline.current_function(window, buffer)
end

require('el').setup {
  generator = function(_, _)
    return {
      extensions.gen_mode {
        format_string = ' %s '
      },
      git_branch,
      ' ',
      sections.split,
      git_icon,
      sections.maximum_width(
        builtin.responsive_file(140, 90),
        0.30
      ),
      sections.collapse_builtin {
        ' ',
        builtin.modified_flag
      },
      sections.split,
      show_current_func,
      lsp_statusline.server_progress,
      ws_diagnostic_counts,
      git_changes,
      '[', builtin.line_with_width(3), ':',  builtin.column_with_width(2), ']',
      sections.collapse_builtin {
        '[',
        builtin.help_list,
        builtin.readonly_list,
        ']',
      },
      builtin.filetype,
    }
  end
}
-- }}}

-- Lightline Config {{{
vim.cmd("let g:lightline = {'colorscheme': 'gruvbox',}")
-- }}}

-- Buffer Completion Config {{{
vim.g.completion_chain_complete_list = {
  default = {
    { complete_items = { 'lsp' } },
    { complete_items = { 'buffers' } },
    { complete_items = { 'snippet' } },
    { mode = { '<c-p>' } },
    { mode = { '<c-n>' } }
  },
}

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
	globals = {
		"use",
	},
})
-- }}}

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
opt.mouse	       = "a"
-- }}}

-- Keymapping Stuff {{{
local options = { noremap = true }
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', options)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', options)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', options)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', options)
map('n', '<leader>fc', '<cmd>Telescope commands<cr>', options)
map('n', '<leader>fcs', '<cmd>Telescope colorscheme<cr>', options)
map('n', '<leader>fbi', '<cmd>Telescope builtin<cr>', options)
map('n', '<leader>fo', '<cmd>Telescope oldfiles<cr>', options)
map('n', '<leader>fca', '<cmd>Telescope lsp_code_actions<cr>', options)
map('n', '<leader>gg',  '<cmd>LazyGit<cr>', options)
map('n', '<C-k>', '<cmd>cnext<cr>zz', options)
map('n', '<C-j>', '<cmd>cprev<cr>zz', options)
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

-- }}}

-- Lightline Config {{{
vim.cmd("let g:lightline = {'colorscheme': 'tokyonight'}")
-- }}}

--- LSP Lightbulb {{{
require'nvim-lightbulb'.update_lightbulb {
    -- LSP client names to ignore
    -- Example: {"sumneko_lua", "null-ls"}
    ignore = {},
    sign = {
        enabled = true,
        -- Priority of the gutter sign
        priority = 10,
    },
    float = {
        enabled = false,
        -- Text to show in the popup float
        text = "💡",
        -- Available keys for window options:
        -- - height     of floating window
        -- - width      of floating window
        -- - wrap_at    character to wrap at for computing height
        -- - max_width  maximal width of floating window
        -- - max_height maximal height of floating window
        -- - pad_left   number of columns to pad contents at left
        -- - pad_right  number of columns to pad contents at right
        -- - pad_top    number of lines to pad contents at top
        -- - pad_bottom number of lines to pad contents at bottom
        -- - offset_x   x-axis offset of the floating window
        -- - offset_y   y-axis offset of the floating window
        -- - anchor     corner of float to place at the cursor (NW, NE, SW, SE)
        -- - winblend   transparency of the window (0-100)
        win_opts = {},
    },
    virtual_text = {
        enabled = false,
        -- Text to show at virtual text
        text = "💡",
        -- highlight mode to use for virtual text (replace, combine, blend), see :help nvim_buf_set_extmark() for reference
        hl_mode = "replace",
    },
    status_text = {
        enabled = false,
        -- Text to provide when code actions are available
        text = "💡",
        -- Text to provide when no actions are available
        text_unavailable = ""
    }
}

vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
--- }}}

-- Gitsigns Confg {{{
require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  numhl = false,
  linehl = false,
  keymaps = {
    -- Default keymap options
    noremap = true,
    buffer = true,

    ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'"},
    ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'"},

    ['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
    ['v <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
    ['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
    ['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
    ['v <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
    ['n <leader>hR'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
    ['n <leader>hp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
    ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line(true)<CR>',

    -- Text objects
    ['o ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
    ['x ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>'
  },
  watch_index = {
    interval = 1000,
    follow_files = true
  },
  current_line_blame = true,
  current_line_blame_delay = 1000,
  current_line_blame_position = 'eol',
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  word_diff = false,
  use_decoration_api = true,
  use_internal_diff = true,  -- If luajit is present
}
-- }}}

-- LSP Config {{{
-- Again, still learning how to set things in lua
vim.cmd('set completeopt=menuone,noinsert,noselect')
vim.cmd('set shortmess+=c')

-- LSP server configuration
local cmp = require'cmp'

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["UltiSnips#Anon"](args.body)
		end,
	},
	mapping = {
		['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
		['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
		['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		['<C-e>'] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close()
		}),
		['<CR>'] = cmp.mapping.confirm({select = false}),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_prev_item()
			end
		end, { "i", "s" }),
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'ultisnips' },
	}, {
		{ name = 'buffer' },
	})
})

cmp.setup.cmdline('/', {
	sources = {
		{ name = 'buffer' }
	}
})

cmp.setup.cmdline(':', {
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.gopls.setup{capabilities = capabilities}
require'lspconfig'.ccls.setup{capabilities = capabilities}
require'lspconfig'.tsserver.setup{capabilities = capabilities}
require'lspconfig'.dockerls.setup{capabilities = capabilities}
require'lspconfig'.jedi_language_server.setup{capabilities = capabilities}
require'lspconfig'.vimls.setup{capabilities = capabilities}
require'lspconfig'.rust_analyzer.setup{capabilities = capabilities}
-- }}}

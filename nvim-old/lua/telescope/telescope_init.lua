-- require('telescope').setup{
-- 	defaults = {
-- 		prompt_position = "bottom",
-- 		prompt_prefix = "> ",
-- 		selection_caret = "> ",
-- 		entry_prefix = "  ",
-- 		initial_mode = "insert",
-- 		layout_strategy = "horizontal",
-- 		layout_defaults = {
-- 			horizontal = {
-- 				mirror = false,
-- 			},
-- 			vertical = {
-- 				mirror = false,
-- 			},
-- 		},
-- 		file_sorter =  require'telescope.sorters'.get_fuzzy_file,
-- 		file_ignore_patterns = {"node_modules/*"},
-- 		generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
-- 		shorten_path = true,
-- 		winblend = 0,
-- 		width = 0.75,
-- 		preview_cutoff = 120,
-- 		results_height = 1,
-- 		results_width = 0.8,
-- 		border = {},
-- 		borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
-- 		use_le = true,
-- 		set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
-- 		file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
-- 		grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
-- 		qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
-- 	},
-- }
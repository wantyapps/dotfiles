-- if !exists('g:airline_symbols')
-- 	let g:airline_symbols = {}
-- endif
if ( vim.api.nvim_eval('exists("g:airline_symbols")') == 0 ) then
	vim.cmd("let g:airline_symbols = {}")
end
vim.cmd("let g:airline_symbols['branch'] = ''")
vim.cmd("let g:airline_theme='icebergDark'")

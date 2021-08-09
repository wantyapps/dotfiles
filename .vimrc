syntax on
set spell

call plug#begin('~/.local/share/vim/plugins')
	Plug 'sheerun/vim-polyglot'
	Plug 'vim-pandoc/vim-pandoc'
	Plug 'rwxrob/vim-pandoc-syntax-simple'
	"Plug 'pangloss/vim-javascript'
	Plug 'tpope/vim-fugitive'
	Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox

" au FileType markdown,pandoc hi Title ctermfg=yellow ctermbg=NONE
" au FileType markdown,pandoc hi Operator ctermfg=yellow ctermbg=NONE

au FileType markdown,pandoc set filetype=markdown

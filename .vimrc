"syntax on
"set spell
"set termguicolors
"set nu
"let mapleader=";"
"set tabstop=4
"set background=dark
"set wrap

call plug#begin('~/.local/share/vim/plugins')
  Plug 'tpope/vim-commentary'
call plug#end()

"colorscheme gruvbox

" au FileType markdown,pandoc hi Title ctermfg=yellow ctermbg=NONE
" au FileType markdown,pandoc hi Operator ctermfg=yellow ctermbg=NONE

"au FileType markdown,pandoc set filetype=markdown

"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"set t_Co=256
"






set backspace=indent,eol,start
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler

colorscheme peachpuff
highlight Comment ctermfg=green
highlight Search ctermfg=0
set notermguicolors

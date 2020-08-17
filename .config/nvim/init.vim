call plug#begin('~/.config/nvim/plugged')

Plug 'chrisbra/Colorizer'

call plug#end()

set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set encoding=utf-8

let mapleader = " "

nnoremap S :%s//g<Left><Left>

set number relativenumber

vnoremap <C-c> "+y
map <C-p> "+P

" Compile document, be it groff/LaTeX/markdown/etc.
nnoremap <leader>cm :w! \| !compiler %<c-r><CR><CR><CR>
	
" Open corresponding .pdf/.html or preview
nnoremap <leader>p :!opout <c-r>%<CR><CR>

"trailing whitespace trimming
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


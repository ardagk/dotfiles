call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dikiaap/minimalist'
Plug 'iamcco/markdown-preview.nvim'
call plug#end()

colorscheme minimalist
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE
autocmd vimenter * hi LineNr guibg=NONE ctermbg=NONE
syntax enable
set backspace=indent,eol,start
set nocompatible
set number
set ts=4
set autoindent
set expandtab
set hidden
set shiftwidth=4
set showmatch
set foldmethod=indent
set relativenumber

inoremap jk <Esc>
inoremap jj <Esc>
nnoremap <C-p> :bp<CR>
nnoremap <C-n> :bn<CR>
nnoremap <Leader>q :bd<CR>
nnoremap <Leader>fd :FZF<CR>


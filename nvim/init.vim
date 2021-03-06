set encoding=utf-8
set nocompatible                                                                

set clipboard=unnamedplus

set backspace=2
set number
set nobackup
set nowritebackup
set noswapfile
set noundofile
set history=50
set laststatus=2
set ruler
set autowrite

set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set nojoinspaces
set smartindent
set autoindent

set splitbelow
set splitright
set guicursor+=n-v-c:blinkon0

set guioptions-=m 
set guioptions-=T
set guioptions-=r
set guioptions-=L

set cursorline
set cursorcolumn


nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

filetype off

call plug#begin('$HOME/vimfiles/bundle')
Plug 'scrooloose/nerdTree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
call plug#end()            

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()

syntax enable
let g:solarized_termcolors=256
colorscheme solarized
set background=dark
let g:airline_powerline_fonts = 1

if has ("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12
    elseif has("gui_win32")
        set guifont=Consolas:h12
    endif
endif

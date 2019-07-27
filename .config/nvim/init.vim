call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'arcticicestudio/nord-vim'

Plug 'bronson/vim-trailing-whitespace'
"Plug 'Valloric/YouCompleteMe'
Plug 'w0rp/ale'
Plug 'conornewton/vim-latex-preview'
call plug#end()
let g:airline_powerline_fonts = 1
set colorcolumn=80,120


set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set termguicolors
colorscheme nord

map <Up>    <nop>
map <Down>  <nop>
map <Left>  <nop>
map <Right> <nop>

set number
set relativenumber

nnoremap j gj
nnoremap k gk

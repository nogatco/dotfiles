call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'iCyMind/NeoSolarized'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Valloric/YouCompleteMe'
call plug#end()
let g:airline_powerline_fonts = 1
set colorcolumn=80,120

set termguicolors
set background=dark
colorscheme NeoSolarized

map <Up>    <nop>
map <Down>  <nop>
map <Left>  <nop>
map <Right> <nop>

set number
set relativenumber


call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'iCyMind/NeoSolarized'
Plug 'ntpeters/vim-better-whitespace'

call plug#end()
let g:airline_powerline_fonts = 1
set colorcolumn=80,120

set termguicolors
set background=dark
colorscheme NeoSolarized

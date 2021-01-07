call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'airblade/vim-gitgutter'

"Plug 'tjdevries/colorbuddy.nvim'
"Plug 'tjdevries/gruvbuddy.nvim'

Plug 'morhetz/gruvbox'

"Plug 'arcticicestudio/nord-vim'
"Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'

Plug 'tpope/vim-surround'
Plug 'bronson/vim-trailing-whitespace'
Plug 'wesQ3/vim-windowswap'
"Plug 'Valloric/YouCompleteMe'
Plug 'w0rp/ale'
Plug 'conornewton/vim-latex-preview'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'rhysd/vim-clang-format'

call plug#end()

let g:airline_powerline_fonts = 1
set colorcolumn=81,121
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab


set termguicolors
syntax enable
set background=dark
"colorscheme solarized8

"set guicursor

map <Up>    <nop>
map <Down>  <nop>
map <Left>  <nop>
map <Right> <nop>

set number
set relativenumber

nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-l> :wincmd l<CR>
nmap <silent> <A-n> :NERDTreeToggle<CR>

nmap <silent> <A-w> :w <CR>

nnoremap j gj
nnoremap k gk

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1

let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc

"lua require('colorbuddy').colorscheme('gruvbuddy')
colorscheme gruvbox

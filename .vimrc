if has('nvim')
  set rtp^=$HOME/.vim/
endif

" Vim plugin manager
call plug#begin('~/.vim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'davidhalter/jedi-vim'
  Plug 'dense-analysis/ale'
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  "Plug 'vim-syntastic/syntastic'
  " Elixir
  Plug 'elixir-editors/vim-elixir'
  " Elm
  Plug 'elmcast/elm-vim'
  " Golang
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'sainnhe/gruvbox-material'
  " Haskell
  Plug 'neovimhaskell/haskell-vim'
  " Javascript
  Plug 'mxw/vim-jsx'
  Plug 'pangloss/vim-javascript'
  " Python
  Plug 'vim-python/python-syntax'
call plug#end()

set encoding=UTF-8
set expandtab
set number relativenumber
set shiftwidth=4
set softtabstop=4
set tabstop=4
set termguicolors
set updatetime=100
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType json setlocal ts=2 sts=2 sw=2

syntax on

let mapleader="\<Space>"
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let g:python_highlight_all=1

nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>p :CtrlP<cr>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l


" Gruvbox color scheme
silent! colorscheme gruvbox-material
let g:gruvbox_material_background = 'medium'
set background=dark


" Learning buffers
" https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>


" Airline plugin
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'


" ALE
let g:ale_linters = {
\    'javascript': ['eslint'],
\    'python': ['flake8', 'pylint']
\}
let g:ale_fixers = {
\    'javascript': ['prettier'],
\    'json': ['prettier'],
\    'python': ['black'],
\    'scala': ['scalafmt']
\}
let g:ale_fix_on_save = 1


" Gitgutter
let g:gitgutter_map_keys = 0


" Jedi-vim
let g:jedi#usages_command = "<leader> u"


" Vim-go
let g:go_null_module_warning = 0


" Haskell-vim
let g:haskell_enable_quantification   = 1 " to enable highlighting of `forall`
let g:haskell_enable_recursivedo      = 1 " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax      = 1 " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles        = 1 " to enable highlighting of type roles
let g:haskell_enable_static_pointers  = 1 " to enable highlighting of `static`
let g:haskell_backpack                = 1 " to enable highlighting of backpack keywords

call plug#begin('~/.vim/plugged')
Plug 'sainnhe/sonokai'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'dense-analysis/ale'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
call plug#end()

set number
set relativenumber
set termguicolors
set updatetime=100
set autoread
set nobackup
set noswapfile
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set nohlsearch
set splitbelow
set splitright
set noshowmode

filetype plugin indent on

let g:sonokai_style = 'shusia'
let g:sonokai_sign_column_background = 'none'
let g:sonokai_enable_italic = 1
colorscheme sonokai

let mapleader=" "

imap jj <Esc>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)
nnoremap <silent> <Leader>o :GFiles<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
map <Leader>p :NERDTreeToggle<CR>
map <silent> <Leader>t :terminal<CR>

let g:airline_theme = 'sonokai'
let g:indentLine_setColors = 0
"let g:indentLine_color_term = 239
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ackprg = 'ag'
let NERDTreeShowHidden = 1

"execute "set t_8f=\e[38;2;%lu;%lu;%lum"
"execute "set t_8b=\e[48;2;%lu;%lu;%lum"
"
nnoremap <Leader>, :Ag<Space><C-R>=expand('<cword>')<CR><CR>
 let &t_ut=''

call plug#begin()

" Nav
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'

" Editor
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Languages
Plug 'maxmellon/vim-jsx-pretty'
Plug 'sheerun/vim-polyglot'

" Initialize plugin system
call plug#end()

" Settings
syntax on
filetype on
filetype plugin indent on
set shiftwidth=2
set softtabstop=2
set laststatus=2
set backspace=indent,eol,start

let g:ctrlp_custom_ignore = 'node_modules\|jspm_packages\|DS_Store\|git'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files=0

set laststatus=2
set number
set colorcolumn=80
set expandtab

" Clear matches with esc
nnoremap <esc> :nohl<CR><esc>

" Splits

" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" set splitbelow
" set splitright

" autocmd VimResized * wincmd =

" NERDTree
" map to ctrl+n and close if only nerdtree is open
map <Tab> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

colorscheme monokai


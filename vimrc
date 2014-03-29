" PATHOGEN
execute pathogen#infect()

" Control-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
set backspace=indent,eol,start

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

syntax on

" SOLARIZED
"set background=dark
"set background=light
colorscheme ir_black

"no swap
set noswapfile

"jj escape
:imap jj <Esc>

" POWERLINE
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"let g:Powerline_symbols = 'fancy'

" always show the status
set laststatus=2
set fillchars+=stl:\ ,stlnc:\
set rtp+=/Users/watts/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim

" Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

"Write the old file out when switching between files.
set autowrite

"Display current cursor position in the lower right corner
set ruler

"Color line!
set colorcolumn=80

"Want a different map leader than \
let mapleader = ","

"Backup stuff
set nobackup
set nowritebackup

"Tab stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"Show command in bottom right portion of the screen
set showcmd

"Show line numbers
set number

"Show cursor line
:set cursorline

"Indent stuff
set smartindent
set autoindent

"Always show last status line
set laststatus=2

"Better line wrapper
set wrap
set textwidth=80
set formatoptions=qrn1

"Set incremental searching
set incsearch

"Highlight searching
set hlsearch

"case insensitive search
set ignorecase
set smartcase

"Opens a vertical split and switches over (\v)
nnoremap <leader>v <C-w>v<C-w>

"Map escape key to jj -- much faster
imap jj <esc>

" easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

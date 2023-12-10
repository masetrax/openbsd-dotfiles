set history=100
set smartcase
set autoindent
set laststatus=0
set nocursorline
set number
set norelativenumber
set tabstop=8
set smarttab
set backspace=indent,eol,start
set noincsearch
set wrap
set mouse=
set mousehide
set scrolloff=3
set showmatch
set cursorline
syntax on

silent !mkdir -p ~/.vim/{backup,swp}/
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//
au FileType crontab setlocal bkc=yes

set t_Co=256
colorscheme masetrax

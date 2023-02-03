" vim-youcompleteme
" sudo apt-get install vim-addon-manager
" vam install youcompleteme

set nocompatible

if has('filetype')
  filetype indent plugin on
endif

if has('syntax')
  syntax on
endif

set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=

if has('mouse')
  set mouse=a
endif

set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
set shiftwidth=4
set softtabstop=4
set expandtab
set noswapfile
set cindent
set nu
set softtabstop=2
set history=100


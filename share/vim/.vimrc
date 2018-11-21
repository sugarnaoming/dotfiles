"System
set fenc=utf-8
set nobackup
set noswapfile
set showcmd
set title
set noerrorbells
set novisualbell
set nowrap
set foldmethod=marker
"Key
inoremap jj <Esc>
set whichwrap=b,s,h,l,<,>,[,],~
"Decoration
set number
set cursorline
set smartindent
set showmatch
set laststatus=2
set wildmode=list:longest
set background=dark
"cursor line is only view of when insert mode
autocmd WinEnter * set cursorline
autocmd WinLeave * set nocursorline
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline
"Indent
set expandtab
set tabstop=2
set shiftwidth=2
"Search
set incsearch
set hlsearch

let _curfile=expand("%:r")
if _curfile == 'Makefile'
  set noexpandtab
endif

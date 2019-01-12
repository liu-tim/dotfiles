source $VIMRUNTIME/mswin.vim   "allows ctrl v and ctrl c commands in vim
behave mswin
filetype indent on      " load filetype-specific indent files
colorscheme molokai
set tabstop=4       " when indenting with '>', use 4 spaces width
set shiftwidth=4     " On pressing tab, insert 4 spaces
set expandtab
set softtabstop=4
set guifont=Ubuntu\ Mono\ 11
syntax enable           " enable syntax processing
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches


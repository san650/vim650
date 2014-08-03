""
"" Basic setup
""

set nocompatible      " use vim, no vi defaults
set encoding=utf-8    " set default encoding to UTF-8
set clipboard=unnamed " use MacOSX clipboard
syntax on             " turn on syntax highlighting

""
"" Whitespace
""

set nowrap                     " don't wrap lines
set softtabstop=2              " use mix of spaces and tabs
set shiftwidth=2               " an autoindent (with <<) is two spaces
set expandtab                  " use spaces, not tabs
set backspace=indent,eol,start " backspace through everything in insert mode

""
"" Searching
""

set ignorecase             " searches are case insensitive...
set smartcase              " ... unless they contain at least one capital letter
set incsearch              " incremental searching
set hlsearch               " highlight matches with the last used search pattern
nnoremap <CR> :noh<CR><CR> " clear search with <enter>

""
"" File types
""

set autoindent " use the indent of the previous line for a newly created line

""
"" Wild settings
""

set wildmode=list:longest  " list all matches and complete till longest common string

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
" Ignore bundler and sass cache
set wildignore+=*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
" Disable temp and backup files
set wildignore+=*.swp,*~,._*

""
"" Backup and swap files
""
set backupdir=~/.vim/tmp/backup/    " where to put backup files.
set directory=~/.vim/tmp/swap/      " where to put swap files.

""
"" Persistent Undo
""
set undofile
set undodir=~/.vim/tmp/undo

""
"" Layout
""
colorscheme railscasts

""
"" Load plugins using pathogen
""

exe 'source ' . expand('~/.vim/') . 'core/pathogen/autoload/pathogen.vim'
call pathogen#infect('plugins/{}')

""
"" NERDTree
""

let g:NERDTreeStatusline = ' '
map <Leader>n :NERDTreeToggle<CR>

""
"" ZoomWin
""

map <Leader><Leader> :ZoomWin<CR>

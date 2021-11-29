""
"" Basic setup
""
set nocompatible      " use vim, no vi defaults
set encoding=utf-8    " set default encoding to UTF-8
set clipboard=unnamed " use MacOSX clipboard
syntax on             " turn on syntax highlighting
set virtualedit=block " allow virtual editing in Visual block mode

""
"" Whitespace
""
set nowrap                     " don't wrap lines
set softtabstop=2              " use mix of spaces and tabs
set shiftwidth=2               " an autoindent (with <<) is two spaces
set expandtab                  " use spaces, not tabs
set backspace=indent,eol,start " backspace through everything in insert mode
autocmd WinEnter,BufWinEnter * match Error /\s\+$/ " trailing whitespaces as errors

""
"" Searching
""

set ignorecase             " searches are case insensitive...
set smartcase              " ... unless they contain at least one capital letter
set incsearch              " incremental searching
set hlsearch               " highlight matches with the last used search pattern
nnoremap <CR> :noh<CR><CR> " clear search with <enter>

""
"" Wild settings
""
set wildmode=list:longest " list all matches and complete till longest common string

""
"" Undo
""
set undodir=~/.vim/undodir " make it persistent
set undofile               " ^---- :-)

""
"" Mouse
""
set mouse=a " allow mouse in all modes

""
"" File Types
""
autocmd FileType gitcommit setlocal spell " Spell check
autocmd WinEnter,BufWinEnter *.cls setlocal ft=java

""
"" Powerline
""
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Meslo\ LG\ S\ for\ Powerline
   endif
endif

""
"" PLUGINS
""
call plug#begin('~/.vim/plugged')
" Plug 'junegunn/fzf'
" Plug 'junegunn/fzf.vim'
" Plug 'mileszs/ack.vim'
" Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Plug 'rhysd/git-messenger.vim'
Plug 'regedarek/ZoomWin'
Plug 'san650/dracula-vim', { 'as': 'dracula' }
Plug 'elixir-editors/vim-elixir'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'slim-template/vim-slim'
Plug 'tomtom/tcomment_vim'
Plug 'mhinz/vim-mix-format'
Plug 'aklt/plantuml-syntax'
Plug 'chrisbra/csv.vim'
Plug 'kchmck/vim-coffee-script'
call plug#end()

" ""
" "" Color scheme
" ""
colorscheme dracula

""
"" Highlight trailing whitespaces
""
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
:autocmd InsertLeave * redraw

set hidden
set nobackup
set nowritebackup
set signcolumn=yes

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <silent> gd :split<CR><Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

""
"" Status line
""
set statusline=         " clear statusline for when vimrc is reloaded
set statusline+=%n.\    " buffer number
set statusline+=%M      " buffer modified flag
set statusline+=%<      " cut at start
set statusline+=%f      " path
set statusline+=%=      " right align
set statusline+=(%l,    " line position of cursor and total number of lines
set statusline+=%c)     " column position of cursor

set laststatus=2        " always show statusline

""
"" Backup and swap files
""
set backupdir=~/.vim/tmp/backup/    " where to put backup files.
set directory=~/.vim/tmp/swap/      " where to put swap files.

""
"" ZoomWin
""

map <Leader><Leader> :ZoomWin<CR>

""
"" tpope's sensible.vim
""
set complete-=i
set smarttab
set nrformats-=octal
set ttimeout

set ttimeoutlen=100
if !&scrolloff
  set scrolloff=1
endif

if !&sidescrolloff
  set sidescrolloff=5
endif

set display+=lastline
set autoread
if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

syntax on
filetype plugin indent on

nmap <C-p> :Files<CR>

""
"" coc plugin
""
" let g:coc_global_extensions =
" ['coc-angular', 'coc-css', 'coc-elixir', 'coc-html', 'coc-json', 'coc-tsserver']
" set updatetime=300

"" Highlight commonly misspelled words
autocmd WinEnter,BufWinEnter * match Error /lenght/

"" Quickfix navigation
nmap ]q :cnext<CR>
nmap [q :cprevious<CR>

# Show trailing chars and tabs
set list
set listchars=tab:>\ ,trail:•

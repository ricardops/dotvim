set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

 
" ---------------
" My bundles  
" ---------------
Bundle 'mattn/emmet-vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'slim-template/vim-slim'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'garbas/vim-snipmate'
Bundle 'ricardops/vim-snippets'
Bundle 'tomtom/tcomment_vim'
Bundle 'vim-scripts/VisIncr'
Bundle 'cschlueter/vim-wombat'
Bundle 'godlygeek/tabular'
Bundle 'Townk/vim-autoclose'
Bundle 'itchyny/lightline.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-endwise'

filetype plugin indent on

let mapleader=","

" ---------------
" File Locations 
" ---------------
source ~/.vim/functions.vim     " Small custom functions


" ---------------
" Color 
" ---------------
set t_Co=256
color jellybeans
"color wombat256
call SearchColor() " Function to change color search 



" ---------------
" UI 
" ---------------
set number         " Line numbers on
set laststatus=2   " Always show status line
set title          " File name on terminal title
set encoding=utf-8 " Sets the character encoding to utf-8
set lazyredraw     " The screen will not be redrawn while executing macros


" ---------------
" Behaviors
" ---------------
set wildmenu                " Make the command-line completion operates in an enhanced mode
set history=1000            " More history
set autowrite               " Write the contents of the file
set autoread                " Load external updates
scriptencoding utf8         " Sets the script encoding to utf-8
set termencoding=utf8       " Sets terminal encoding to utf-8
set clipboard+=unnamed      " Yank and paste the selection without prepending " * to commands.
set nowritebackup
set noswapfile
set confirm                 " Confirm before close
set diffopt+=iwhite         " Ignore changes in amount of white space
set tabpagemax=20           " Maximum number of tab pages to be opened by the -p command line argument
set undolevels=1000         " Maximum number of changes that can be undone
set sessionoptions+=globals " Changes the effect of the :mksession command
set formatoptions-=o        " Don't continue comments when pushing o/O
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set wildignore+=*.pyc,*.zip,*.gz,*.bz,*.tar,*.jpg,*.png,*.gif,*.avi,*.wmv,*.ogg,*.mp3,*.mov,*.class
set wildmode=list:longest   " More useful tab completion on menu


" ---------------
" Text Format 
" ---------------
set tabstop=2         " Number of spaces that a <Tab> in the file counts.
set shiftwidth=2      " Number of spaces to use for each step of (auto)indent.
set softtabstop=2     " Number of spaces that a <Tab> counts for while performing editing operations
set autoindent
set expandtab         " In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
set fileencoding=utf8
set copyindent

" ---------------
" Searching 
" ---------------
set hlsearch   " When there is a previous search pattern, highlight all its matches.
set ignorecase
set smartcase  " Override the 'ignorecase' option if the search pattern contains upper case characters.

" ---------------
" Visual 
" ---------------
set showcmd      " Show (partial) command in the last line of the screen.
set linebreak
set showbreak=.. " Show this when wrap a line
set cursorline


" ---------------
" Mouse 
" ---------------
set mousehide
set mouse=a   " Mose facility




" Make <C-l> clear the highlight
nnoremap <C-l> :nohls<CR>:set hls?<CR>


" Full copy/cut/past simple
inoremap <C-v> <ESC>"+gpa
vnoremap <C-C> "+y
vnoremap <C-x> "+x


" Switch between tabs
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left>  :tabprevious<CR>


" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk


" Format the entire file
nmap <leader>ff ggVG=

" Select all with CTRL a
noremap <C-a> ggVG

" Spell
set spelllang=en,pt
let spell_auto_type="tex"
autocmd FileType tex,mail set spell
nmap <leader>s :set spell!<CR>



" ---------------
" NERDTree 
" ---------------
nmap <leader>p :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeWinPos="right"
let NERDTreeIgnore=['\.vim','\.zip','\.tar','\.jpg','\.png','\.gif','\.pdf']


" ---------------
" CtrlP  
" ---------------
let g:ctrlp_working_path_mod = 2
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5

 
" ---------------
" SuperTab  
" ---------------
let g:SuperTabNoCompletAfter=['\s','*','-','+']

 
" ---------------
" Tagbar   
" ---------------
nmap <leader>t :TagbarToggle<CR>
let g:tagbar_autofocus = 1
hi TagbarKind guifg=Green ctermfg=Green
hi TagbarSignature guifg=116 ctermfg=116


" ---------------
" AutoClose   
" ---------------
nmap <F5> :AutoCloseToggle<CR>
let g:AutoClosePairs_del = "'"


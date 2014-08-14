set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'


" ---------------
" My bundles  
" ---------------
Bundle 'nanotech/jellybeans.vim'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'slim-template/vim-slim'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'tomtom/tcomment_vim'
Bundle 'vim-scripts/VisIncr'
Bundle 'cschlueter/vim-wombat'
Bundle 'tomasr/molokai'
Bundle 'godlygeek/tabular'
Bundle 'Townk/vim-autoclose'
Bundle 'itchyny/lightline.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-endwise'
Bundle 'Valloric/MatchTagAlways'
Bundle 'airblade/vim-gitgutter'

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
" color wombat256
" color molokai 
" let g:rehash256 = 1
call SearchColor()           " Function to change color search 



" ---------------
" UI 
" ---------------
set number                   " Line numbers on
set laststatus=2             " Always show status line
set title                    " File name on terminal title
set encoding=utf-8           " Sets the character encoding to utf-8
set lazyredraw               " The screen will not be redrawn while executing macros


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

" (Hopefully) removes the delay when hitting esc in insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1
" Don't add the comment prefix when I hit enter or o/O on a comment line.
set formatoptions-=or
" Don't wait so long for the next keypress (particularly in ambigious Leader
" situations.
set timeoutlen=500


" ---------------
" Text Format 
" ---------------
set tabstop=2               " Number of spaces that a <Tab> in the file counts.
set shiftwidth=2            " Number of spaces to use for each step of (auto)indent.
set softtabstop=2           " Number of spaces that a <Tab> counts for while performing editing operations
set autoindent
set expandtab               " In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
set fileencoding=utf8
set copyindent


" ---------------
" Searching 
" ---------------
set hlsearch                " When there is a previous search pattern, highlight all its matches.
set ignorecase
set smartcase               " Override the 'ignorecase' option if the search pattern contains upper case characters.
set incsearch               " Highlighting while searching


" ---------------
" Visual 
" ---------------
set showcmd                 " Show (partial) command in the last line of the screen.
set linebreak
set showbreak=..            " Show this when wrap a line
set cursorline


" ---------------
" Mouse 
" ---------------
set mousehide
set mouse=a                 " Mose facility



" Open .vimrc in new tab
nmap <leader>v :tabedit $MYVIMRC<cr>


" Source my vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>


" Make <C-l> clear the highlight
nnoremap <C-l> :nohls<cr>:set hls?<cr>


" Full paste/copy/cut simple
inoremap <C-v> <esc>"+gp
vnoremap <C-c> "+y
vnoremap <C-x> "+x


" Switch between tabs
nnoremap <C-Right> :tabnext<cr>
nnoremap <C-Left>  :tabprevious<cr>


" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk


" Format the entire file with ,ff
nmap <leader>ff :call IndentAllFile()<cr>


" Select all with CTRL a
noremap <C-a> ggVG


" Delete all text inside parentheses with dp
onoremap p i(


" Delete the contents of the parentheses and place in insert mode between  them - cin(
onoremap in( :<c-u>normal! f(vi(<cr>


" Remap ESC
inoremap jk <esc>l


" Auto-center
nmap n nzz
nmap N Nzz
nmap G Gzz


" Spell
set spelllang=en,pt
let spell_auto_type="tex"
autocmd FileType tex,mail set spell
nmap <leader>s :set spell!<cr>

" Latex
autocmd FileType tex let g:tex_flavor='latex'


" Show date and time
nmap <leader>d :echo strftime("%c")<cr>


" Easier moving of code blocks
vnoremap < <gv
vnoremap > >gv


" Open new tab
nmap <leader>nt :tabnew<cr>


" Automatic reloading  of vimrc
autocmd! bufwritepost vimrc source %


" Turn the highlighting off temporarily in the current buffer while inserting
autocmd InsertEnter * :setlocal nohlsearch
autocmd InsertLeave * :setlocal hlsearch


" Return to last edit position when opening files
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \ exe "normal! g`\"" |
      \ endif
" Remember info about open buffers on close
" set viminfo^=%



" ---------------
" NERDTree 
" ---------------
nmap <leader>p :NERDTreeToggle<cr>
let NERDTreeHighlightCursorline=1
let NERDTreeWinPos="right"
let NERDTreeIgnore=['\.vim','\.zip','\.tar','\.jpg','\.png','\.gif','\.pdf']


" ---------------
" CtrlP  
" ---------------
let g:ctrlp_tabpage_position = 'ac'
let g:ctrlp_working_path_mod = 'c'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5
let g:ctrlp_open_new_file = 't'
let g:ctrlp_use_caching = 0



" ---------------
" SuperTab  
" ---------------
let g:SuperTabNoCompletAfter=['\s','*','-','+']


" ---------------
" Tagbar   
" ---------------
nmap <leader>t :TagbarToggle<cr>
let g:tagbar_autofocus = 1
hi TagbarKind guifg=Green ctermfg=Green
hi TagbarSignature guifg=116 ctermfg=116


" ---------------
" AutoClose   
" ---------------
nmap <F5> :AutoCloseToggle<cr>
let g:AutoClosePairs_del = "'"
autocmd FileType ruby " auto-close || pair in ruby files
      \ let b:AutoClosePairs = AutoClose#DefaultPairsModified("|", "")


" ---------------
" Surround
" ---------------
" Autoclose in visual mode
vmap [ S[ 
vmap ( S(
vmap { S{
vmap ] S]
vmap ) S)
vmap } S}
vmap " S"
vmap ' S'


" ---------------
" GitGutter 
" ---------------
nmap <leader>g :GitGutterToggle<cr>


" ---------------
" Lightline 
" ---------------
let g:lightline = {
      \'colorscheme': 'jellybeans',
      \}


" ---------------
" UltiSnips 
" ---------------
let g:UltiSnipsEditSplit="vertical"
nmap <leader>l :call UltiSnips#ListSnippets()<cr>

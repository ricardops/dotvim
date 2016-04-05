set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" ---------------
" Plugins  
" ---------------
Plugin 'nanotech/jellybeans.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'slim-template/vim-slim'
" Plugin 'ervandew/supertab'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-scripts/VisIncr'
Plugin 'godlygeek/tabular'
Plugin 'Townk/vim-autoclose'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-endwise'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Valloric/MatchTagAlways'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'junegunn/goyo.vim'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'tomasr/molokai'
" Plugin 'benmills/vimux'

call vundle#end()            " required
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
" color jellybeans
" color Tomorrow 
color Tomorrow-Night
" color Tomorrow-Night-Eighties
" color Tomorrow-Night-Bright



" ---------------
" UI 
" ---------------
set rnu
set number                   " Line numbers on
set numberwidth=5
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
syntax on


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

" Use tab to jump between blocks, because it's easier
nnoremap <tab> %
vnoremap <tab> %



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

" Jump to next character in insert mode
inoremap <C-l> <esc>la

" Jump to previous character in insert moda
inoremap <C-h> <esc>i

" go to start/end of de line in isert mode
inoremap <C-e> <esc>A
inoremap <C-a> <esc>I


" Repeat latest f, t, F or T
nmap <C-j> ;
" Repeat latest f, t, F or T in opposite direction
nmap <C-k> ,



" remove extra whitespace
nmap <leader><space> :%s/\s\+$<cr>

" shortcut to save
nmap <leader>, :w<cr>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>


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





" ---------------
"NERDTree 
" ---------------
nmap <leader>p :NERDTreeToggle<cr>
let NERDTreeHighlightCursorline=1
let NERDTreeWinPos="right"
let NERDTreeIgnore=['\.vim','\.zip','\.tar','\.jpg','\.png','\.gif','\.pdf']


" ---------------
"CtrlP  
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
" let g:SuperTabNoCompletAfter=['\s','*','-','+']


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
" UltiSnips 
" ---------------
let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit = 'vertical'



let g:Powerline_colorscheme = 'solarized16'


call SearchColor()           " Function to change color search 

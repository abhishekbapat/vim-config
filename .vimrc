"------------------
" Syntax and indent
"------------------
syntax on " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them

" highlight current line, but only in active window
augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

filetype plugin indent on " enable file type detection
set autoindent

" Highlight trailing spaces
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


"---------------------
" Basic editing config
"---------------------
set clipboard=unnamedplus " use system clipboard by default (vimx, gvim -v, mvim -v)
set shortmess+=I " disable startup message
set nu " number lines
set rnu " relative line numbering
set incsearch " incremental search (as string is being typed)
set hls " highlight search
set listchars=tab:>>,nbsp:~ " set list to see tabs and non-breakable spaces
set lbr " line break
set scrolloff=5 " show lines above and below cursor (when possible)
set noshowmode " hide mode
set laststatus=2
set backspace=indent,eol,start " allow backspacing over everything
set timeout timeoutlen=1000 ttimeoutlen=100 " fix slow O inserts
set lazyredraw " skip redrawing screen in some cases
set autochdir " automatically set current directory to directory of last opened file
set hidden " allow auto-hiding of edited buffers
set history=8192 " more history
set nojoinspaces " suppress inserting two spaces between sentences
" use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" smart case-sensitive search
set ignorecase
set smartcase
" tab completion for files/buffers
set wildmode=longest,list
set wildmenu
set mouse+=a " enable mouse mode (scrolling, selection, etc)
" if &term =~ '^screen'
"    " tmux knows the extended mouse mode
"    set ttymouse=xterm2
" endif
set nofoldenable " disable folding by default

" NOTE: a redundant backup is better than a data lost.
"   use undo instead of backup or swap file
"   set noswapfile
"   set nobackup
"   set nowritebackup

" use undo
set undodir=~/.vim/undodir
set undofile
" color column
set colorcolumn=81
" highlight ColorColumn ctermbg=0 guibg=lightgrey

set langmap=ㅁa,ㅠb,ㅊc,ㅇd,ㄷe,ㄸe,ㄹf,ㅎg,ㅗh,ㅑi,ㅓj,ㅏk,ㅣl,ㅡm,ㅜn,ㅐo,ㅔp,ㅂq,ㅃq,ㄱr,ㄲr,ㄴs,ㅅt,ㅕu,ㅍv,ㅈw,ㅌx,ㅛy,ㅋz


"--------------------
" Misc configurations
"--------------------

let ru_newbie=0
if ru_newbie
    " Try to prevent bad habits like using the arrow keys for movement. This is
    " not the only possible bad habit. For example, holding down the h/j/k/l keys
    " for movement, rather than using more efficient movement commands, is also a
    " bad habit. The former is enforceable through a .vimrc, while we don't know
    " how to prevent the latter.
    " Do this in normal mode...
    nnoremap <Left>  :echoe "Use h"<CR>
    nnoremap <Right> :echoe "Use l"<CR>
    nnoremap <Up>    :echoe "Use k"<CR>
    nnoremap <Down>  :echoe "Use j"<CR>
    " ...and in insert mode
    inoremap <Left>  <ESC>:echoe "Use h"<CR>
    inoremap <Right> <ESC>:echoe "Use l"<CR>
    inoremap <Up>    <ESC>:echoe "Use k"<CR>
    inoremap <Down>  <ESC>:echoe "Use j"<CR>
endif

" unbind keys
map <C-a> <Nop>
map <C-x> <Nop>
nmap Q <Nop>

" disable audible bell
set noerrorbells visualbell t_vb=

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

"
" remap <Leader> to <space>
let mapleader = " "

" window movement
" <space>j,k,h,l
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" quicker buffer circulation
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>

" ~ : change the case of the current character
" <Esc>, <C-c>, <C-[>: leave insert mode
" v     : visual mode
" <S-v> : virual line mode
" <C-v> : vertial visual mode

" I     : insert at the beginning of a line
" A     : append to the end of a line
" / n N : search next and previous
" * #   : search text on a cursor forward and backward

" f<c>, t<c>: jump to charactor <c> (on or before)
" F<c>, T<c>: jump to charactor <c> backward
" ; ,       : continue jumping to the charactor forward or backward
" x         : delete a char
" s         : delete a char and switch to an insert mode

" [[, ]]   : jumping functions
" 12j      : jump down 12 lines
" {, }     : hop back and forth between empty lines
" %        : jump back and forth between matching {([
" di{, ci{ : delete/change inside/around {}
" da{, ca{
" dip, cip, vip: delete/change/visual-select inside a paragraph
" diw      : delete a word if you are in the middle of word

" <C-o>, <C-i> : jump back and forth between old and new cursor position
" <C-^>        : switch between two files
" m{hjkl} - '{hjkl} : local mark
" m{HJKL} - '{HJKL} : global mark

" <C-wv>, <C-ws> : vertical/horizontal split
" <C-wo> : close all splits
" <C-w=> : equalize all
" <C-wr> : rotate buffers

"---------------------
" Plugin configuration
"---------------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim' "Vundle manager, required
Plugin 'morhetz/gruvbox' "Colors
Plugin 'valloric/youcompleteme' "C/C++ and Python code completion
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

"---------------------
" color scheme
"---------------------
set termguicolors
let g:gruvbox_contrast_dark = "hard"
if !has('gui_running')
    let g:gruvbox_guisp_fallback = "bg"
endif
let g:gruvbox_invert_selection='0'
colorscheme gruvbox
set background=dark

"---------------------
" bottom bar
"---------------------
let g:airline_theme='luna'
